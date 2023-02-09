import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/todays_lesson_header/todays_lesson_header.dart';
import 'elements/todays_tab/todays_lesson_tab.dart';
import 'elements/todays_tab_bar_view/todays_lesson_tab_bar_view.dart';

class TodaysLessonBody extends StatelessWidget {
  TodaysLessonBody({super.key, required this.todaysLessonTabController})
      : super();

  final TabController todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TodaysLessonHeader(
          date: '3/21',
          day: '火曜日',
          todaysLessonTabController: todaysLessonTabController,
        ),
        TodaysLessonTab(todaysLessonTabController: todaysLessonTabController),
        Container(
          height: 283.sp,
          child: Hero(
            tag: 'todaysLessonHeroTag',
            transitionOnUserGestures: false,
            child: Material(
              child: TodaysLessonTabBarView(
                onlyShowThreeLessons: true,
                todaysLessonTabController: todaysLessonTabController,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
