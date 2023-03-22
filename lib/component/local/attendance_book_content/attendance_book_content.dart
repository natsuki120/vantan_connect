import 'package:flutter/material.dart';
import 'package:vantan_connect/component/local/attendance_book_content/elements/user_info_card/user_info_card.dart';

class AttendanceBookContent extends StatelessWidget {
  const AttendanceBookContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UserInfoCard(),
      ],
    );
  }
}
