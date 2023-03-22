import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/elements/todays_lesson_list/todays_lesson_list.dart';

class TodaysLessonBody extends StatelessWidget {
  TodaysLessonBody({super.key, this.todaysLessonTabController}) : super();

  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TodaysLessonTab(todaysLessonTabController: todaysLessonTabController),
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
