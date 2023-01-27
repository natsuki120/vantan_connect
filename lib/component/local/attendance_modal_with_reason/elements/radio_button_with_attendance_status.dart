import 'package:flutter/material.dart';

import '../../../shered/single/color.dart';
import '../../../shered/single/test_style.dart';

class RadioButtonWithAttendanceStatus extends StatelessWidget {
  const RadioButtonWithAttendanceStatus({
    super.key,
    required this.attendanceState,
  });
  final String attendanceState;
  //TODO: enum? value?

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      horizontalTitleGap: 0,
      title: Text(
        attendanceState,
        style: callOutRegular(black),
      ),
      leading: Radio(
        value: attendanceState,
        groupValue: 'attendance_status',
        onChanged: (String? value) {},
      ),
    );
  }
}
