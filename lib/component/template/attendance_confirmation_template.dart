import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/student_attendance_status_list.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import '../organism/check_box/check_box_which_changes_color.dart';

class AttendanceConfirmationTemplate extends StatelessWidget {
  AttendanceConfirmationTemplate({Key? key}) : super(key: key);

  SizedBox space = SpaceBox(width: 10);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomRadioWhichChangesColor(text: 'サンプル', ''),
                SpaceBox(height: 10),
                CustomRadioWhichChangesColor(text: 'サンプル', ''),
              ],
            ),
            SpaceBox(height: 15),
            SingleChildScrollView(
              child: Column(
                children: [
                  StudentAttendanceStatusListElement(
                    studentName: '小泉直大',
                    statusIcon: Icons.check,
                    locationIcon: Icons.video_camera_back,
                    circleColor: Color.fromRGBO(0, 176, 107, 1),
                    statusIconColor: Colors.white,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '高橋夏輝',
                    statusIcon: CupertinoIcons.exclamationmark,
                    locationIcon: Icons.school_sharp,
                    circleColor: Color.fromRGBO(242, 231, 0, 1),
                    statusIconColor: Colors.black,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                  StudentAttendanceStatusListElement(
                    studentName: '山田太郎',
                    statusIcon: Icons.question_mark,
                    circleColor: Colors.grey,
                    statusIconColor: Colors.white,
                    reason: 'ここに理由を記載する',
                  ),
                  space,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
