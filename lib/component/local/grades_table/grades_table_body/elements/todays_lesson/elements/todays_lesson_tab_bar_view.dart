import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'elements/todays_lesson_list.dart';

class TodaysLessonTabBarView extends HookWidget {
  TodaysLessonTabBarView({super.key, required this.onlyShowThreeLessons});
  final bool onlyShowThreeLessons;
  @override
  Widget build(BuildContext context) {
    final _todaysLessonTabController = useTabController(initialLength: 3);
    return TabBarView(
      controller: _todaysLessonTabController,
      children: [
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
      ],
    );
  }
}

//TODO: 上記のフォント調整とNaoさんが変更した点の変更 //TabBarとTabBarViewが連携できていなかったのでcontrollerを見直す indicatorの色を確認する