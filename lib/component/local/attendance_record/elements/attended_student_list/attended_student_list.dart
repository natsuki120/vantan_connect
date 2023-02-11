import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/attended_student/attended_student.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../../domain/class/class.dart';

class AttendedStudentList extends ConsumerWidget {
  const AttendedStudentList(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(fetchStudentAttendanceByClass(ClassAndDocument(
            classInfo: classInfo, classDocument: classDocument)))
        .when(
          data: (studentList) => ListView.builder(
              shrinkWrap: true,
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                final student = studentList[index];
                return AttendedStudent(student: student);
              }),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
