import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/local/attendance_record/elements/custom_tab/custom_tab.dart';
import '../../../domain/class/class.dart';
import 'elements/attended_student/attended_student.dart';
import 'elements/not_attended_student/not_attended_student.dart';
import 'elements/other_student/other_student.dart';

class AttendanceRecord extends HookConsumerWidget {
  const AttendanceRecord({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomTab(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 28.sp),
          child: TabBarView(
            children: [
              AttendedStudent(classInfo: classInfo),
              AttendedStudent(classInfo: classInfo),
              NotAttendedStudent(classInfo: classInfo),
              OtherStudent(classInfo: classInfo),
            ],
          ),
        ),
      ),
    );
  }
}
