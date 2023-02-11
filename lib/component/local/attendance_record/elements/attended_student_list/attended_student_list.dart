import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/attended_student/attended_student.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import '../../../../../domain/class/class.dart';

class AttendedStudentList extends ConsumerWidget {
  const AttendedStudentList({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchStudentAttendanceByClass(classInfo)).when(
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
