import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/todays_lesson_body/elements/todays_lesson_tab_bar_view/elements/todays_lesson_list/todays_lesson_list.dart';
import 'package:vantan_connect/component/shared/single/custom_tab/custom_tab.dart';

import 'elements/todays_lesson_header/todays_lesson_header.dart';

class TodaysLessonBody extends StatelessWidget {
  TodaysLessonBody({super.key, this.todaysLessonTabController}) : super();

  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TodaysLessonHeader(),
        // 試験時には不要なため
        //  SharedCustomTab(tabs: [
        //     Tab(text: 'aクラス', height: 28.sp),
        //     Tab(text: 'bクラス', height: 28.sp),
        //     Tab(text: 'cクラス', height: 28.sp),
        //   ]),
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
