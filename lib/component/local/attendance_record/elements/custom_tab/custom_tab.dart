import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'elements/display_how_attendance_button/display_how_attendance_button.dart';

class CustomTab extends ConsumerWidget {
  const CustomTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DisplayHowAttendanceButton(attendance: 'すべて'),
          SpaceBox(),
          DisplayHowAttendanceButton(attendance: '出席'),
          SpaceBox(),
          DisplayHowAttendanceButton(attendance: '遅刻'),
          SpaceBox(),
          DisplayHowAttendanceButton(attendance: '欠席'),
          SpaceBox(),
          DisplayHowAttendanceButton(attendance: 'その他'),
          SpaceBox(),
        ],
      ),
    );
  }
}
