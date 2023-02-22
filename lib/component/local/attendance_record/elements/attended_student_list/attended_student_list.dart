import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/attended_student/attended_student.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../../../../../domain/class/class.dart';
import '../../../../../domain/student/student.dart';
import '../../../../shared/combined/late_attended_student/late_attended_student.dart';
import '../../../../shared/single/late_after_attended/late_after_attended.dart';
import '../../../../shared/single/student_list/student_list.dart';

class AttendedStudentList extends ConsumerWidget {
  const AttendedStudentList(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllStudentAttendanceStatusByClass(classInfo)).when(
          data: (dataList) => Column(
            children: [
              //FIXME: 仮おき検証のためif文等省いています //案別々に取得して作り途中出席者がゼロの場合にできるようにする
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    final lateStudent = [];
                    for (Student data in dataList)
                      if (data.name == student.name) {
                        if (data.attendanceState == '出席' ||
                            data.attendanceState == '遅刻') {
                          if (data.attendanceState == '出席')
                            return AttendedStudent(student: student);
                          else
                            lateStudent.add(student);
                        }
                      }
                    ;

                    ;
                    for (Student lateStudent in lateStudent) {
                      return LateAfterAttendedStudent(
                        student: lateStudent,
                      );
                    }
                    return Container();
                  }),
            ],
          ),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
