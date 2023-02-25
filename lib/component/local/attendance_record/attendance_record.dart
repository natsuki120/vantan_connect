import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/shared/single/custom_tab/custom_tab.dart';

import '../../../domain/class/class.dart';
import '../../../domain/class_document/class_document.dart';
import '../../shared/single/buttons/buttons.dart';
import '../../shared/single/color/color.dart';
import '../../shared/single/text_style/text_style.dart';
import '../attendance_modal_with_reason/elements/cancel_button/cancel_button.dart';
import 'elements/all_student_status_list/all_student_status_list.dart';
import 'elements/attended_student_list/attended_student_list.dart';
import 'elements/late_student_list/late_student_list.dart';
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
    final isEditable = useState<bool>(true);
    final attendanceTabController = useTabController(initialLength: 5);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SharedCustomTab(controller: attendanceTabController, tabs: [
            Tab(text: 'すべて'),
            Tab(text: '出席'),
            Tab(text: '遅刻'),
            Tab(text: '欠席'),
            Tab(text: 'その他'),
          ]),
          Expanded(
            child: TabBarView(
              controller: attendanceTabController,
              children: [
                AllStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
                AttendedStudentList(
                  classInfo: classInfo,
                  classDocument: classDocument,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: Text('編集')),
                    LateAttendedStudentList(
                      classDocument: classDocument,
                      classInfo: classInfo,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CancelButton(),
                        SizedBox(width: 24.sp),
                        FilledEnabledButton(
                          text: '決定',
                          textStyle: bodyBold(onPrimary),
                          padding: EdgeInsets.symmetric(
                            vertical: 10.sp,
                            horizontal: 24.sp,
                          ),
                          backgroundColor: primary,
                          callback: () {},
                        ),
                      ],
                    ),
                  ],
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
