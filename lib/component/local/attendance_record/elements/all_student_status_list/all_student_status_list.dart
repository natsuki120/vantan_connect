import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/attended_student/attended_student.dart';
import 'package:vantan_connect/component/shared/combined/late_attended_student/late_attended_student.dart';
import 'package:vantan_connect/component/shared/combined/other_student/other_student.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../../../../../domain/class/class.dart';
import '../../../../../domain/student/student.dart';
import '../../../../shared/combined/not_attended_student/not_attended_student.dart';
import '../../../../shared/single/student_list/student_list.dart';

class AllStudentList extends ConsumerWidget {
  const AllStudentList(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllStudentAttendanceStatusByClass(classInfo)).when(
          data: (dataList) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                final student = studentList[index];
                for (Student data in dataList)
                  if (data.name == student.name) {
                    if (data.attendanceState == '出席' ||
                        data.attendanceState == '遅刻') {
                      if (data.attendanceState == '出席')
                        return AttendedStudent(student: student);
                      else
                        return LateAttendedStudent(student: student);
                    } else if (data.attendanceState == '欠席') {
                      return NotAttendedStudent(student: student);
                    } else {
                      return OtherStudent(student: student);
                    }
                  }
                return Container();
              }),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
