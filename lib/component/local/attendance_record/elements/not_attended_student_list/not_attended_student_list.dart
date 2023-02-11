import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/not_attended_student/not_attended_student.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/riverpod/riverpod.dart';

class NotAttendedStudentList extends ConsumerWidget {
  const NotAttendedStudentList({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchStudentNotAttendanceByClass(classInfo)).when(
          data: (studentList) => ListView.builder(
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
