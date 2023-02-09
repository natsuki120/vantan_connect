import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/component/shared/single/border_line/border_line.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../shared/single/token/color/color.dart';
import '../../shared/single/token/space_box/space_box.dart';
import '../../shared/single/token/text_style/text_style.dart';

class LessonRecordCard extends HookConsumerWidget {
  const LessonRecordCard(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final Class classInfo;
  final ClassDocument classDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attend = ref.watch(fetchStudentAttendanceByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final notAttend = ref.watch(fetchStudentNotAttendanceByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final late = ref.watch(fetchStudentLateByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final other = ref.watch(fetchStudentOtherByClass(
        ClassAndDocument(classInfo: classInfo, classDocument: classDocument)));
    final calculatePer = FutureProvider((ref) =>
        attend.value!.length +
        notAttend.value!.length +
        late.value!.length +
        other.value!.length / attend.value!.length);
    final percent = ref.watch(calculatePer);
    return Padding(
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
                      data: (attend) => Text(
                        '${attend.length}人',
                        style: bodyBold(midEmphasis),
                      ),
                      error: (error, stack) => Text(error.toString()),
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
                      data: (notAttend) => Text(
                        '${notAttend.length}人',
                        style: bodyBold(midEmphasis),
                      ),
                      error: (error, stack) => Text(error.toString()),
                      loading: () => CircularProgressIndicator(),
                    )
                  ],
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text('遅刻', style: caption1Regular(lowEmphasis)),
                //     SpaceBox(height: 4.sp),
                //     late.when(
                //       data: (late) => Text(
                //         '${late.length}人',
                //         style: bodyBold(midEmphasis),
                //       ),
                //       error: (error, stack) => Text(error.toString()),
                //       loading: () => CircularProgressIndicator(),
                //     )
                //   ],
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('その他', style: caption1Regular(lowEmphasis)),
                    SpaceBox(height: 4.sp),
                    other.when(
                      data: (other) => Text(
                        '${other.length}人',
                        style: bodyBold(midEmphasis),
                      ),
                      error: (error, stack) => Text(error.toString()),
                      loading: () => CircularProgressIndicator(),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('出席率', style: caption1Regular(lowEmphasis)),
                    SpaceBox(height: 4.sp),
                    percent.when(
                      data: (percentData) => Text(
                        '${percentData.ceil() * 100}%',
                        style: bodyBold(primary),
                      ),
                      error: (error, stack) => Text(error.toString()),
                      loading: () => CircularProgressIndicator(),
                    )
                  ],
                ),
                percent.when(
                  data: (data) => CircularPercentIndicator(
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 25.0.sp,
                    lineWidth: 10.0.sp,
                    percent: 0.7,
                    progressColor: primary,
                  ),
                  error: (error, stack) => Text(error.toString()),
                  loading: () => CircularProgressIndicator(),
                )
              ],
            ),
          ),
          SpaceBox(height: 25.sp),
          BorderLine(),
        ],
      ),
    );
  }
}
