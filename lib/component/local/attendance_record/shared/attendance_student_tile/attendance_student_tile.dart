import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/domain/student/student.dart';
import 'elements/attendance_status/attend_status/attend_status.dart';
import 'elements/attendance_status/late_attendance_status/late_attendance_status.dart';
import 'elements/attendance_status/no_attend_status/not_attended_status.dart';
import 'elements/attendance_status/other_status/other_status.dart';
import 'elements/reason_text/reason_text.dart';
import '../../../../shared/single/border_line/border_line.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/space_box/space_box.dart';
import '../../../../shared/single/text_style/text_style.dart';

class AttendedStudentTile extends HookWidget {
  AttendedStudentTile({
    Key? key,
    required this.student,
  }) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context) {
    final attendanceState = useState(student.attendanceState);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.0.sp,
            right: 8.0.sp,
            left: 8.0.sp,
            bottom: 12.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () {
                      switch (attendanceState.value) {
                        case '出席':
                          attendanceState.value = '遅刻';
                          break;
                        case '遅刻':
                          attendanceState.value = '欠席';
                          break;
                        case '欠席':
                          attendanceState.value = 'その他';
                          break;
                        case 'その他':
                          attendanceState.value = '出席';
                          break;
                      }
                    },
                    child: Column(
                      children: [
                        if (attendanceState.value == '出席')
                          AttendStatus()
                        else if (attendanceState.value == '遅刻')
                          LateAttendedStatus()
                        else if (attendanceState.value == '欠席')
                          NotAttendedStatus()
                        else
                          OtherStatus(),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                            Text('student.name', style: bodyBold(highEmphasis)),
                            Spacer(),
                            Text('7:30'),
                          ],
                        ),
                        SpaceBox(height: 12.sp),
                        ReasonText(reasonText: 'a')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        BorderLine(),
      ],
    );
  }
}
