import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/combined/attended_student/attended_student.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/border_line/border_line.dart';
import '../../../../shared/single/space_box/space_box.dart';

class AttendedStudentList extends ConsumerWidget {
  const AttendedStudentList({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ref.watch(fetchStudentAttendanceByClass(classInfo)).when(
              data: (studentList) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    return AttendedStudent(student: student);
                  }),
              error: (error, _) => Icon(Icons.error),
              loading: () => CircularProgressIndicator(),
            ),
        SpaceBox(height: 15.sp),
        BorderLine(),
        SpaceBox(height: 15.sp),
      ],
    );
  }
}
