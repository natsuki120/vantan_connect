import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/elements/todays_lesson_list/hooks/hooks.dart';
import 'package:vantan_connect/component/shared/riverpod.dart';
import '../../../../../../../../shared/single/color.dart';
import '../../../../../../../../shared/single/text_style.dart';
import '../../../../grades_table_shared/gradation_container.dart';
import '../todays_lesson_card.dart';

class TodaysLessonList extends ConsumerWidget {
  TodaysLessonList({
    super.key,
    this.onlyShowThreeLessons = false,
  });
  final bool onlyShowThreeLessons;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classList = ref.watch(fetchClassListInAPClass);
    return classList.when(
        data: (data) {
          return GradationContainer(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0.sp),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  var classInfo = data[index];
                  return TodaysLessonCard(
                    classInfo: classInfo,
                    attendanceClassmate: ref
                        .watch(fetchStudentAttendanceByClass(classInfo))
                        .when(
                          data: (data) => Text('${data.length.toString()}人',
                              style: headerMedium(midEmphasis)),
                          error: (error, stack) =>
                              Text('error', style: headerMedium(midEmphasis)),
                          loading: () => CircularProgressIndicator(),
                        ),
                    tardyClassmate: ref
                        .watch(fetchStudentNotAttendanceByClass(classInfo))
                        .when(
                          data: (data) => Text('${data.length.toString()}人',
                              style: headerMedium(midEmphasis)),
                          error: (error, stack) =>
                              Text('error', style: headerMedium(midEmphasis)),
                          loading: () => CircularProgressIndicator(),
                        ),
                    otherClassmate: ref
                        .watch(fetchStudentOtherByClass(classInfo))
                        .when(
                          data: (data) => Text('${data.length.toString()}人',
                              style: headerMedium(midEmphasis)),
                          error: (error, stack) =>
                              Text('error', style: headerMedium(midEmphasis)),
                          loading: () => CircularProgressIndicator(),
                        ),
                  );
                },
              ),
            ),
          );
        },
        error: (error, stack) => Text(error.toString()),
        loading: () => CircularProgressIndicator());
  }
}
