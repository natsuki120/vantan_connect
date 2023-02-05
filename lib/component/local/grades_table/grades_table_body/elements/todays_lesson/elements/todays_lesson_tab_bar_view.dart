import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'todays_lesson_tab/elements/todays_lesson_list.dart';

class TodaysLessonTabBarView extends HookWidget {
  const TodaysLessonTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final _todaysLessonTabController = useTabController(initialLength: 3);
    return TabBarView(
      controller: _todaysLessonTabController,
      children: [
        TodaysLessonList(),
        TodaysLessonList(),
        TodaysLessonList(),
      ],
    );
  }
}
