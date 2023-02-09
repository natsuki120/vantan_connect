import 'package:flutter/material.dart';

import 'elements/todays_lesson_list/todays_lesson_list.dart';

class TodaysLessonTabBarView extends StatelessWidget {
  TodaysLessonTabBarView({
    //FIXME: childrenを引数にしてここでonlyshowthreeを決める必要はないと思う
    super.key,
    required this.onlyShowThreeLessons,
    required this.todaysLessonTabController,
  });
  final bool onlyShowThreeLessons;
  final TabController todaysLessonTabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: todaysLessonTabController,
      children: [
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
      ],
    );
  }
}
