import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/todays_lesson_body/elements/todays_lesson_tab_bar_view/elements/todays_lesson_list/todays_lesson_list.dart';

import 'elements/todays_lesson_header/todays_lesson_header.dart';
import 'elements/todays_lesson_tab/todays_lesson_tab.dart';

class TodaysLessonBody extends StatelessWidget {
  TodaysLessonBody({super.key, this.todaysLessonTabController}) : super();

  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TodaysLessonHeader(),
        // 試験時には不要なため TodaysLessonTab(todaysLessonTabController: todaysLessonTabController),
        Container(
          height: 283.sp,
          child: Hero(
            tag: 'todaysLessonHeroTag',
            transitionOnUserGestures: false,
            child: Material(child: TodaysLessonList()),
          ),
        ),
      ],
    );
  }
}
