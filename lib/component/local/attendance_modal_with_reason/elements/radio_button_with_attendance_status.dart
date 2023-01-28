import 'package:flutter/material.dart';
import 'package:vantan_connect/component/shered/single/radio_button.dart';

import '../../../shered/single/color.dart';
import '../../../shered/single/test_style.dart';

class RadioButtonWithAttendanceStatus extends StatelessWidget {
  const RadioButtonWithAttendanceStatus({
    super.key,
    required this.attendanceState,
  });
  final String attendanceState;

//TODO: Radioクラスでは、Radio<T>のTで指定したTypeによりラジオボタンをグルーピングできるので行う.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // RadioButtonWithText(
        //   text: '遅刻',
        //   value: attendanceState,
        //   groupValue: '',
        // ),
        // RadioButtonWithText(
        //   text: '欠席',
        //   value: attendanceState,
        //   groupValue: '',
        // ),
        // RadioButtonWithText(
        //   text: 'その他(公欠を除く)',
        //   value: attendanceState,
        //   groupValue: '',
        // ),
      ],
    );
  }
}
