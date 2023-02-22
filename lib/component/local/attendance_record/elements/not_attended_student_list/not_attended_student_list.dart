import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/not_attended_student/not_attended_student.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/riverpod/riverpod.dart';

class NotAttendedStudentList extends ConsumerWidget {
  const NotAttendedStudentList({
    Key? key,
    required this.classInfo,
    required this.classDocument,
  }) : super(key: key);

  final Class classInfo;
  final ClassDocument classDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(fetchStudentNotAttendanceByClass(ClassAndDocument(
            classInfo: classInfo, classDocument: classDocument)))
        .when(
          data: (studentList) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                final student = studentList[index];
                return NotAttendedStudent(student: student);
              }),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
