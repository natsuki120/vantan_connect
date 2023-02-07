import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/todays_lesson_tab.dart';
import 'elements/todays_lesson_tab_bar_view.dart';

class TodaysLessonBody extends StatelessWidget {
  TodaysLessonBody({super.key, this.todaysLessonTabController}) : super();

  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TodaysLessonTab(todaysLessonTabController: todaysLessonTabController),
        Container(
          height: 283.sp,
          child: Hero(
            tag: 'hero',
            child: TodaysLessonTabBarView(
              onlyShowThreeLessons: true,
              todaysLessonTabController: todaysLessonTabController,
            ),
          ),
        ),
      ],
    );
  }
}
