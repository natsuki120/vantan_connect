import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vantan_connect/component/local/attendance_record/attendance_record.dart';
import 'package:vantan_connect/component/shared/single/navigator/navigator.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/component/shared/single/border_line/border_line.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/space_box/space_box.dart';
import '../../../../shared/single/student_list/student_list.dart';
import '../../../../shared/single/text_style/text_style.dart';

class LessonResultPart extends ConsumerWidget {
  const LessonResultPart(
      {super.key, required this.classInfo, required this.classDocument});

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attend = ref.watch(fetchStudentAttendanceByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final notAttend = ref.watch(fetchStudentNotAttendanceByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final other = ref.watch(fetchStudentOtherByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final calculatePer =
        FutureProvider((ref) => (attend.value!.length / studentList.length));
    final percent = ref.watch(calculatePer);
    return GestureDetector(
      onTap: () => NavigatorPush(context,
          page: AttendanceRecord(
              classInfo: classInfo, classDocument: classDocument)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 26.sp),
            Row(
              children: [
                Text(
                  '${classDocument.day}',
                  style: bodyBold(highEmphasis),
                ),
                Spacer(),
                Icon(Icons.navigate_next),
              ],
            ),
            SpaceBox(height: 26.sp),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('出席', style: caption1Regular(lowEmphasis)),
                      SpaceBox(height: 4.sp),
                      attend.when(
                        data: (studentList) => Text(
                          '${studentList.length}人',
                          style: bodyBold(midEmphasis),
                        ),
                        error: (error, stack) {
                          print(error);
                          return Icon(Icons.error);
                        },
                        loading: () => CircularProgressIndicator(),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('欠席', style: caption1Regular(lowEmphasis)),
                      SpaceBox(height: 4.sp),
                      notAttend.when(
                        data: (studentList) => Text(
                          '${studentList.length}人',
                          style: bodyBold(midEmphasis),
                        ),
                        error: (error, stack) => Icon(Icons.error),
                        loading: () => CircularProgressIndicator(),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('その他', style: caption1Regular(lowEmphasis)),
                      SpaceBox(height: 4.sp),
                      other.when(
                        data: (studentList) => Text(
                          '${studentList.length}人',
                          style: bodyBold(midEmphasis),
                        ),
                        error: (error, stack) => Icon(Icons.error),
                        loading: () => CircularProgressIndicator(),
                      )
                    ],
                  ),
                  percent.when(
                    data: (percent) => Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('出席率', style: caption1Regular(lowEmphasis)),
                            SpaceBox(height: 4.sp),
                            Text(
                              '${(percent * 100).round()}%',
                              style: bodyBold(primary),
                            ),
                          ],
                        ),
                        SpaceBox(width: 24.sp),
                        CircularPercentIndicator(
                          circularStrokeCap: CircularStrokeCap.round,
                          radius: 25.0.sp,
                          lineWidth: 10.0.sp,
                          percent: percent,
                          progressColor: primary,
                        ),
                      ],
                    ),
                    error: (error, stack) => Icon(Icons.error),
                    loading: () => CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
            SpaceBox(height: 25.sp),
            BorderLine(),
          ],
        ),
      ),
    );
  }
}
