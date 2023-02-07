import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/todays_lesson_tab_bar_view.dart';

import '../../../shared/single/color.dart';
import '../grades_table_body/elements/todays_lesson/elements/todays_lesson_header.dart';
import '../grades_table_body/elements/todays_lesson/elements/todays_lesson_tab.dart';
import '../grades_table_body/grades_table_body.dart';

class GradesTableModalShowTodaysLessons extends StatelessWidget {
  GradesTableModalShowTodaysLessons({
    super.key,
    required this.date,
    required this.day,
  });
  final String date;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.vertical,
      key: Key('key'),
      background: GradesTableBody(),
      onDismissed: (_) => Navigator.of(context).pop(),
      child: Scaffold(
        backgroundColor: white,
        body: SafeArea(
          bottom: false,
          child: Container(
            color: white,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                children: [
                  TodaysLessonHeader(
                    date: date,
                    day: day,
                    isModal: true,
                  ),
                  TodaysLessonTab(),
                  Expanded(
                    child: Hero(
                      tag: 'hero',
                      child:
                          TodaysLessonTabBarView(onlyShowThreeLessons: false),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
