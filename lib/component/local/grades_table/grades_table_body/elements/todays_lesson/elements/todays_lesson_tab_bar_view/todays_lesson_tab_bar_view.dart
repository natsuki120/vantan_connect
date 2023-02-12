import 'package:flutter/material.dart';

import 'elements/todays_lesson_list/todays_lesson_list.dart';

class TodaysLessonTabBarView extends StatelessWidget {
  TodaysLessonTabBarView({
    super.key,
    required this.onlyShowThreeLessons,
    this.todaysLessonTabController,
  });
  final bool onlyShowThreeLessons;
  final TabController? todaysLessonTabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: todaysLessonTabController,
      children: [
        Container(
          height: 300,
          child: TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        ),
        Container(
          height: 300,
          child: TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        ),
        Container(
          height: 300,
          child: TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        ),
      ],
    );
  }
}
