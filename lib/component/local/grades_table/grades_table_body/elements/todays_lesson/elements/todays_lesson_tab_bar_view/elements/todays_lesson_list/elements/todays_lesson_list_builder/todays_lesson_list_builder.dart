import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/todays_lesson_card.dart';
import 'hooks/hooks.dart';

class TodaysLessonListBuilder extends StatelessWidget {
  TodaysLessonListBuilder({
    super.key,
    required this.itemCount,
    this.startIndex = 0,
    this.onlyShowThreeLessons = false,
  });
  final int itemCount;
  final int startIndex;
  final bool onlyShowThreeLessons;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.0.sp),
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: onlyShowThreeLessons ? 3 : itemCount,
          itemBuilder: (BuildContext context, int index) {
            var _todaysLesson = todaysLessons[index];
            return TodaysLessonCard(
              className: _todaysLesson['className'],
              attendanceClassmate:
                  _todaysLesson['attendanceClassmate'].toString(),
              tardyClassmate: _todaysLesson['tardyClassmate'].toString(),
              otherClassmate: _todaysLesson['otherClassmate'].toString(),
            );
          },
        ));
  }
}
