import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/todays_lesson_tab.dart';
import 'elements/todays_lesson_tab_bar_view.dart';

class TodaysLessonBody extends HookWidget {
  TodaysLessonBody({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    final todaysLessonTabController = useTabController(initialLength: 3);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TodaysLessonTab(tabController: todaysLessonTabController),
        Container(
          height: 283.sp,
          child: Hero(
            tag: 'hero',
            child: TodaysLessonTabBarView(
              onlyShowThreeLessons: true,
              tabController: todaysLessonTabController,
            ),
          ),
        ),
      ],
    );
  }
}
