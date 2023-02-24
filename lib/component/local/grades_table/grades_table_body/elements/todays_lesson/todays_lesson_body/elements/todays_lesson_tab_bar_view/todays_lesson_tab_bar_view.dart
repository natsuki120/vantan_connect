import 'package:flutter/material.dart';

import 'elements/todays_lesson_list/todays_lesson_list.dart';

class TodaysLessonTabBarView extends StatelessWidget {
  TodaysLessonTabBarView({
    super.key,
    this.todaysLessonTabController,
  });
  final TabController? todaysLessonTabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: todaysLessonTabController,
      children: [
        TodaysLessonList(),
        TodaysLessonList(),
        TodaysLessonList(),
      ],
    );
  }
}
