import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/round_square_floating_action_button.dart';
import '../organism/schedule_app_bar.dart';
import '../organism/schedule_class_card.dart';

class DairyScheduleTemplate extends StatelessWidget {
  DairyScheduleTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0.h),
          child: ScheduleAppBar(month: '11月')),
      body: SafeArea(
        child: Column(
          children: [
            ScheduleClassCard(),
          ],
        ),
      ),
      floatingActionButton: RoundSquareFloatingActionButton(
        iconData: Icons.mail_outline,
        onPressed: () {},
      ),
    );
  }
}
