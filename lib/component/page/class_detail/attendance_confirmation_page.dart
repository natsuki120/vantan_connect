import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/organism/student_attendance_status_list.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/view_model/attendance_status_state/attendance_status_state_view_model.dart';
import 'package:vantan_connect/view_model/attendance_status_state_list/attendance_status_state_list.dart';
import '../../organism/check_box/check_box_which_changes_color.dart';

class AttendanceConfirmationPage extends ConsumerStatefulWidget {
  AttendanceConfirmationPage({
    Key? key,
    required this.classByDayState,
  }) : super(key: key);

  final ClassByDayState classByDayState;

  @override
  ConsumerState<AttendanceConfirmationPage> createState() =>
      _AttendanceConfirmationPageState();
}

class _AttendanceConfirmationPageState
    extends ConsumerState<AttendanceConfirmationPage> {
  String selectedText = '出席';

  @override
  void initState() {
    super.initState();
    ref
        .read(attendanceStatusStateList.notifier)
        .fetchAttendanceStatusStateList(widget.classByDayState);
  }

  changeIndexAndText(String text) {
    setState(() {
      selectedText = text;
    });
  }

  resetIndexAndText() {
    setState(() {
      selectedText = 'a';
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(attendanceStatusViewModel);
    ref.watch(attendanceStatusStateList);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    child: CustomRadioWhichChangesColor(
                      text: '出席者',
                      selectedText,
                    ),
                    onTap: () {
                      if (selectedText == '出席') {
                        resetIndexAndText();
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchAttendanceStatusStateList(
                              widget.classByDayState,
                            );
                      } else {
                        changeIndexAndText('出席');
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchStatusStateByAttendanceList(
                              widget.classByDayState,
                              selectedText,
                            );
                      }
                    },
                  ),
                  SpaceBox(height: 10),
                  GestureDetector(
                    child: CustomRadioWhichChangesColor(
                      text: '欠席者',
                      selectedText,
                    ),
                    onTap: () {
                      if (selectedText == '欠席') {
                        resetIndexAndText();
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchAttendanceStatusStateList(
                              widget.classByDayState,
                            );
                      } else {
                        changeIndexAndText('欠席');
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchStatusStateByAttendanceList(
                              widget.classByDayState,
                              selectedText,
                            );
                      }
                    },
                  ),
                  SpaceBox(height: 10),
                  GestureDetector(
                    child: CustomRadioWhichChangesColor(
                      text: '遅刻者',
                      selectedText,
                    ),
                    onTap: () {
                      if (selectedText == '遅刻') {
                        resetIndexAndText();
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchAttendanceStatusStateList(
                              widget.classByDayState,
                            );
                      } else {
                        changeIndexAndText('遅刻');
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchStatusStateByAttendanceList(
                              widget.classByDayState,
                              selectedText,
                            );
                      }
                    },
                  ),
                  SpaceBox(height: 10),
                  GestureDetector(
                    child: CustomRadioWhichChangesColor(
                      text: '未送信者',
                      selectedText,
                    ),
                    onTap: () {
                      if (selectedText == '未送信') {
                        resetIndexAndText();
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchAttendanceStatusStateList(
                              widget.classByDayState,
                            );
                      } else {
                        changeIndexAndText('');
                        ref
                            .watch(attendanceStatusStateList.notifier)
                            .fetchStatusStateByAttendanceList(
                              widget.classByDayState,
                              selectedText,
                            );
                      }
                    },
                  ),
                  SpaceBox(height: 10),
                ],
              ),
            ),
            const SpaceBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              itemCount:
                  ref.read(attendanceStatusStateList.notifier).state.length,
              itemBuilder: (context, index) {
                final student =
                    ref.read(attendanceStatusStateList.notifier).state[index];
                return Column(
                  children: [
                    for (var refStudent
                        in ref.read(attendanceStatusStateList.notifier).state)
                      if (student.name == refStudent.name)
                        if (refStudent.attendance == '出席')
                          GestureDetector(
                            child: StudentAttendanceStatusListElement(
                              studentName: student.name,
                              statusIcon: Icons.check,
                              locationIcon: Icons.school_sharp,
                              circleColor: Color.fromRGBO(0, 176, 107, 1),
                              statusIconColor: Colors.white,
                              reason: student.reason,
                            ),
                          )
                        else if (refStudent.attendance == '欠席' ||
                            refStudent.attendance == '遅刻')
                          StudentAttendanceStatusListElement(
                            studentName: student.name,
                            statusIcon: CupertinoIcons.exclamationmark,
                            locationIcon: Icons.video_camera_back,
                            circleColor: Color.fromRGBO(242, 231, 0, 1),
                            statusIconColor: Colors.black,
                            reason: student.reason,
                          )
                        else
                          StudentAttendanceStatusListElement(
                            studentName: student.name,
                            statusIcon: Icons.question_mark,
                            circleColor: Colors.grey,
                            statusIconColor: Colors.white,
                            reason: student.reason,
                          ),
                    const SpaceBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
            const SpaceBox(height: 100)
          ],
        ),
      ),
    );
  }
}
