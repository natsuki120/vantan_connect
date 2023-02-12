import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/todays_lesson_tab_bar_view/elements/todays_lesson_list/elements/todays_lesson_list_builder/todays_lesson_list_builder.dart';
import 'package:vantan_connect/component/shared/single/color.dart';

import '../../../../../grades_table_shared/gradation_container.dart';
import 'elements/todays_lesson_list_builder/hooks/hooks.dart';

class TodaysLessonList extends HookWidget {
  TodaysLessonList({
    super.key,
    this.onlyShowThreeLessons = false,
  });
  final bool onlyShowThreeLessons;
  @override
  Widget build(BuildContext context) {
    final classTabController = useTabController(initialLength: 2);
    return Column(
      children: [
        TabBar(
          controller: classTabController,
          isScrollable: true,
          indicatorColor: Colors.transparent.withOpacity(0),
          tabs: [
            Tab(text: '', height: 0),
            Tab(text: '', height: 0),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: classTabController,
            children: [
              //FIXME: 一時的　これをもう少し安全に行う
              GradationContainer(
                  child: TodaysLessonListBuilder(
                itemCount: todaysLessons.length,
                onlyShowThreeLessons: true,
              )),
              GradationContainer(
                  child: TodaysLessonListBuilder(
                itemCount: todaysLessons.length - 3,
                startIndex: 3,
              )),
            ],
          ),
        ),
      ],
    );
  }
}

//これをtab化する