import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'elements/todays_lesson_list.dart';

class TodaysLessonTabBarView extends HookWidget {
  TodaysLessonTabBarView({
    super.key,
    required this.onlyShowThreeLessons,
    required this.tabController,
  });
  final bool onlyShowThreeLessons;
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: [
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
        TodaysLessonList(onlyShowThreeLessons: onlyShowThreeLessons),
      ],
    );
  }
}

//TODO: 上記のフォント調整とNaoさんが変更した点の変更 
////TabBarとTabBarViewが連携できていなかったのでcontrollerを見直す 
///indicatorの色を確認する　カリキュラムもlistbuilder化する