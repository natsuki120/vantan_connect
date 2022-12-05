import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/round_square_floating_action_button.dart';
import '../organism/schedule_app_bar.dart';
import '../organism/schedule_class_card.dart';
import '../organism/top_weekly_calendar.dart';

class DairyScheduleTemplate extends StatelessWidget {
  DairyScheduleTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0.h),
          child: Column(
            children: [
              ScheduleAppBar(month: '11月'),
              TopWeeklyCalendar(),
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ScheduleClassCard(),
            ],
          ),
        ),
      ),
      floatingActionButton: RoundSquareFloatingActionButton(
        iconData: Icons.mail_outline,
        onPressed: () {},
      ),
    );
  }
}
