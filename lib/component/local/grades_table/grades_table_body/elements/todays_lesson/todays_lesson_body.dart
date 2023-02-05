import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/todays_lesson_tab/todays_lesson_tab.dart';
import 'elements/todays_lesson_tab_bar_view.dart';

class TodaysLessonBody extends StatelessWidget {
  TodaysLessonBody({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 20),
            TodaysLessonTab(),
          ],
        ),
        SizedBox(height: 16.sp),
        Container(
          height: 283.sp,
          child: Hero(
            tag: 'grades_table_modal_show_todays_lessons',
            child: TodaysLessonTabBarView(),
          ),
        ),
      ],
    );
  }
}
