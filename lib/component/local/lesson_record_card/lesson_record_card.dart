import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vantan_connect/component/shared/navigator.dart';
import 'package:vantan_connect/component/shared/riverpod.dart';
import 'package:vantan_connect/component/shared/single/border_line.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/page/student_list_lesson_detail_page.dart';
import '../../shared/single/color.dart';
import '../../shared/single/space_box.dart';
import '../../shared/single/text_style.dart';

class LessonRecordCard extends HookConsumerWidget {
  const LessonRecordCard({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attend = ref.watch(fetchStudentAttendanceByClass(classInfo));
    final notAttend = ref.watch(fetchStudentNotAttendanceByClass(classInfo));
    final late = ref.watch(fetchStudentLateByClass(classInfo));
    final other = ref.watch(fetchStudentOtherByClass(classInfo));
    final calculatePer = FutureProvider((ref) =>
        attend.value!.length +
        notAttend.value!.length +
        late.value!.length +
        other.value!.length / attend.value!.length);
    final percent = ref.watch(calculatePer);
    return Column(
      children: [
        GestureDetector(
          onTap: () => NavigatorPush(
            context,
            page: StudentListInLessonDetailPage(classInfo: classInfo),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            error: (error, stack) => Icon(Icons.error),
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
                                Text('出席率',
                                    style: caption1Regular(lowEmphasis)),
                                SpaceBox(height: 4.sp),
                                Text(
                                  '${percent}%',
                                  style: bodyBold(primary),
                                ),
                              ],
                            ),
                            SpaceBox(width: 24.sp),
                            CircularPercentIndicator(
                              circularStrokeCap: CircularStrokeCap.round,
                              radius: 25.0.sp,
                              lineWidth: 10.0.sp,
                              percent: percent / 100,
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
        ),
      ],
    );
  }
}
