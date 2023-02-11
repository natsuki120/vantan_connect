import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/class/class.dart';
import 'elements/attended_student_list/attended_student_list.dart';
import 'elements/custom_tab/custom_tab.dart';
import 'elements/not_attended_student_list/not_attended_student_list.dart';
import 'elements/other_student_list/other_student_list.dart';

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
              AttendedStudentList(classInfo: classInfo),
              AttendedStudentList(classInfo: classInfo),
              NotAttendedStudentList(classInfo: classInfo),
              OtherStudentList(classInfo: classInfo),
            ],
          ),
        ),
      ),
    );
  }
}
