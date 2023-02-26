import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../shared/single/custom_tab/custom_tab.dart';
import '/domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import 'elements/all_student_status_list/all_student_status_list.dart';
import 'elements/attended_student_list/attended_student_list.dart';
import 'elements/late_student_list/late_student_list.dart';
import 'elements/not_attended_student_list/not_attended_student_list.dart';
import 'elements/other_student_list/other_student_list.dart';
import 'shared/attendance_editor/attendance_editor.dart';

class AttendanceRecord extends HookWidget {
  const AttendanceRecord(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);
  final ClassDocument classDocument;
  final Class classInfo;
  @override
  Widget build(BuildContext context) {
    final attendanceTabController = useTabController(initialLength: 5);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //Tabをクリック不可にするやつ
          IgnorePointer(
            child: SharedCustomTab(
              controller: attendanceTabController,
              tabs: [
                Tab(text: 'すべて'),
                Tab(text: '出席'),
                Tab(text: '遅刻'),
                Tab(text: '欠席'),
                Tab(text: 'その他'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: attendanceTabController,
              //TODO: 横スクロールを禁止できる
              physics: NeverScrollableScrollPhysics(),
              children: [
                AllStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
                AttendedStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
                AttendanceEditor(
                  attendance: LateAttendedStudentList(
                    classInfo: classInfo,
                    classDocument: classDocument,
                  ),
                ),
                NotAttendedStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
                OtherStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
