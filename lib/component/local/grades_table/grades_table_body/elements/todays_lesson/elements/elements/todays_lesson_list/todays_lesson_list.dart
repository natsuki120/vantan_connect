import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/elements/todays_lesson_list/hooks/hooks.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../../../../../shared/single/color/color.dart';
import '../../../../../../../../shared/single/text_style/text_style.dart';
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
    return ref.watch(fetchClassListInAPClass).when(
        data: (data) {
          return GradationContainer(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0.sp),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  var classInfo = data[index];
                  return ref.watch(today).when(
                        data: (today) {
                          return TodaysLessonCard(
                            classInfo: classInfo,
                            attendanceClassmate: ref
                                .watch(fetchStudentAttendanceByClass(
                                    ClassAndDocument(
                                  classInfo: classInfo,
                                  classDocument: today,
                                )))
                                .when(
                                  data: (data) => Text(
                                      '${data.length.toString()}人',
                                      style: headerMedium(midEmphasis)),
                                  error: (error, stack) => Text('error',
                                      style: headerMedium(midEmphasis)),
                                  loading: () => CircularProgressIndicator(),
                                ),
                            tardyClassmate: ref
                                .watch(fetchStudentNotAttendanceByClass(
                                    ClassAndDocument(
                                  classInfo: classInfo,
                                  classDocument: today,
                                )))
                                .when(
                                  data: (data) => Text(
                                      '${data.length.toString()}人',
                                      style: headerMedium(midEmphasis)),
                                  error: (error, stack) => Text('error',
                                      style: headerMedium(midEmphasis)),
                                  loading: () => CircularProgressIndicator(),
                                ),
                            otherClassmate: ref
                                .watch(
                                    fetchStudentOtherByClass(ClassAndDocument(
                                  classInfo: classInfo,
                                  classDocument: today,
                                )))
                                .when(
                                  data: (data) => Text(
                                      '${data.length.toString()}人',
                                      style: headerMedium(midEmphasis)),
                                  error: (error, stack) => Text('error',
                                      style: headerMedium(midEmphasis)),
                                  loading: () => CircularProgressIndicator(),
                                ),
                          );
                        },
                        error: (err, stack) => Text('読み込みエラーです。開発者にお問合せください'),
                        loading: () => CircularProgressIndicator(),
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
