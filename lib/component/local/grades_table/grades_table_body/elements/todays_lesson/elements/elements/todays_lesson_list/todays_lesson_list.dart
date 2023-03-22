import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/elements/todays_lesson_list/hooks/hooks.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/component/shared/single/student_list/student_list.dart';
import 'package:vantan_connect/component/shared/single/test_data/test_data.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
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
    return ref.watch(fetchClassListInCClass).when(
        data: (data) {
          return GradationContainer(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0.sp),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length <= 3 ? data.length : 3,
                itemBuilder: (BuildContext context, int index) {
                  var classInfo = data[index];
                  final attendedStudent = ref.watch(
                    fetchStudentAttendanceByClass(
                      ClassAndDocument(
                        classInfo: classInfo,
                        classDocument: ClassDocument(day: testClassDocument),
                      ),
                    ),
                  );
                  final absentStudent = ref.watch(
                    fetchStudentNotAttendanceByClass(
                      ClassAndDocument(
                        classInfo: classInfo,
                        classDocument: ClassDocument(day: testClassDocument),
                      ),
                    ),
                  );
                  return ref.watch(today).when(
                        data: (today) {
                          return TodaysLessonCard(
                            classInfo: classInfo,
                            attendanceClassmate: attendedStudent.when(
                              data: (data) => Text('${data.length.toString()}人',
                                  style: headerMedium(midEmphasis)),
                              error: (error, stack) => Text('error',
                                  style: headerMedium(midEmphasis)),
                              loading: () => CircularProgressIndicator(),
                            ),
                            tardyClassmate: absentStudent.when(
                              data: (data) => Text('${data.length.toString()}人',
                                  style: headerMedium(midEmphasis)),
                              error: (error, stack) => Text('error',
                                  style: headerMedium(midEmphasis)),
                              loading: () => CircularProgressIndicator(),
                            ),
                            otherClassmate: attendedStudent.value == null ||
                                    absentStudent.value == null
                                ? CircularProgressIndicator()
                                : Text(
                                    '${studentList.length - absentStudent.value!.length - attendedStudent.value!.length}人',
                                    style: headerMedium(midEmphasis)),
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
        error: (error, stack) {
          print(error);
          return Text(error.toString());
        },
        loading: () => CircularProgressIndicator());
  }
}
