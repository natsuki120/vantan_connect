import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/todays_lesson_list.dart';

import '../../../../../shared/single/color.dart';

class TodaysLessonBody extends HookWidget {
  TodaysLessonBody({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    final _todaysLessonTabController = useTabController(initialLength: 3);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          controller: _todaysLessonTabController,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(8), // Creates border
            color: primary,
          ),
          isScrollable: true,
          labelColor: white,
          unselectedLabelColor: midEmphasis,
          tabs: [
            Tab(text: 'aクラス', height: 28.sp),
            Tab(text: 'bクラス', height: 28.sp),
            Tab(text: 'cクラス', height: 28.sp),
          ],
        ),
        SizedBox(height: 16.sp),
        Container(
          height: 265.sp,
          child: TabBarView(
            controller: _todaysLessonTabController,
            children: [
              TodaysLessonList(),
              TodaysLessonList(),
              TodaysLessonList(),
            ],
          ),
        ),
      ],
    );
  }
}
