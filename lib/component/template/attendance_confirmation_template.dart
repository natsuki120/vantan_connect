import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/custom_app_bar.dart';
import 'package:vantan_connect/component/organism/student_attendance_status_list.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import '../organism/check_box/check_box_which_changes_color.dart';

class AttendanceConfirmationTemplate extends StatelessWidget {
  AttendanceConfirmationTemplate({Key? key}) : super(key: key);

  SizedBox space = SpaceBox(width: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: '出席管理'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 101, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CheckBoxWhichChangesColor(),
                SpaceBox(height: 10),
                CheckBoxWhichChangesColor(),
              ],
            ),
            SpaceBox(height: 15),
            StudentAttendanceStatusListElement(
              studentName: '小泉直大',
              statusIcon: Icons.check,
              locationIcon: Icons.video_camera_back,
              circleColor: Color.fromRGBO(0, 176, 107, 1),
              statusIconColor: Colors.white,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '高橋夏輝',
              statusIcon: CupertinoIcons.exclamationmark,
              locationIcon: Icons.school_sharp,
              circleColor: Color.fromRGBO(242, 231, 0, 1),
              statusIconColor: Colors.black,
            ),
            space,
            StudentAttendanceStatusListElement(
              studentName: '山田太郎',
              statusIcon: Icons.question_mark,
              circleColor: Colors.grey,
              statusIconColor: Colors.white,
            ),
            space,
          ],
        ),
      ),
    );
  }
}
