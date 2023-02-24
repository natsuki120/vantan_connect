import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/local/attendance_record/elements/all_student_status_list/all_student_status_list.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../../../domain/class/class.dart';
import '../../../domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../shared/combined/late_attended_student/late_attended_student.dart';
import '../../shared/single/buttons/buttons.dart';
import '../../shared/single/color/color.dart';
import '../../shared/single/riverpod/riverpod.dart';
import '../../shared/single/text_style/text_style.dart';
import '../attendance_modal_with_reason/elements/cancel_button/cacncel_button.dart';
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
    final isEditable = useState(true);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomTab(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 28.sp),
          child: TabBarView(
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
                  TempLateAttendedStudentList(
                    classDocument: classDocument,
                    classInfo: classInfo,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //FIXME: 修正必須
                      isEditable ? Container() : CancelButton(),
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
        ),
      ),
    );
  }
}

class TempLateAttendedStudentList extends ConsumerWidget {
  const TempLateAttendedStudentList({
    Key? key,
    required this.classInfo,
    required this.classDocument,
  }) : super(key: key);

  final Class classInfo;
  final ClassDocument classDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(fetchStudentLateByClass(ClassAndDocument(
            classInfo: classInfo, classDocument: classDocument)))
        .when(
          data: (studentList) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                final student = studentList[index];
                return LateAttendedStudent(student: student);
              }),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
