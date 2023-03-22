import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/local/attendance_record/elements/all_student_status_list/all_student_status_list.dart';
import 'package:vantan_connect/component/local/attendance_record/elements/late_student_list/late_student_list.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../../../domain/class/class.dart';
import '../../shared/single/riverpod/riverpod.dart';
import 'elements/attended_student_list/attended_student_list.dart';
import 'elements/custom_tab/custom_tab.dart';
import 'elements/not_attended_student_list/not_attended_student_list.dart';
import 'elements/other_student_list/other_student_list.dart';

class AttendanceRecord extends HookConsumerWidget {
  const AttendanceRecord(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(selectedAttendanceButtonProvider);
    String selectedAttendanceButtonText =
        ref.watch(selectedAttendanceButtonProvider.notifier).state;
    return Scaffold(
      appBar: AppBar(
        title: Text(classDocument.day),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: CustomTab(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 28.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpaceBox(height: 20),
              if (selectedAttendanceButtonText == 'すべて')
                AllStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
              if (selectedAttendanceButtonText == '出席')
                AttendedStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
              if (selectedAttendanceButtonText == '遅刻')
                LateAttendedStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
              if (selectedAttendanceButtonText == '欠席')
                NotAttendedStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
              if (selectedAttendanceButtonText == 'その他')
                OtherStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
