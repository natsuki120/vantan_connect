import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/attended_student/attended_student.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/combined/late_attended_student/late_attended_student.dart';

class AttendedStudentList extends ConsumerWidget {
  const AttendedStudentList(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllStudentAttendanceStatusByClass(classInfo)).when(
          data: (dataList) => ListView.builder(
              shrinkWrap: true,
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final student = dataList[index];
                return Column(children: [
                  student.attendanceState == '出席'
                      ? AttendedStudent(student: student)
                      : Container(),
                  student.attendanceState == '遅刻'
                      ? LateAttendedStudent(student: student)
                      : Container(),
                ]);
              }),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
