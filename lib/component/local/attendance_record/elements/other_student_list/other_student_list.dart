import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/combined/other_student/other_student.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/riverpod/riverpod.dart';
import '../../../../shared/single/border_line/border_line.dart';
import '../../../../shared/single/space_box/space_box.dart';

class OtherStudentList extends ConsumerWidget {
  const OtherStudentList({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ref.watch(fetchStudentNotAttendanceByClass(classInfo)).when(
              data: (studentList) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    return OtherStudent(student: student);
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
