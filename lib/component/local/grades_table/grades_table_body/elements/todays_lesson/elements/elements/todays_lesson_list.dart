import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../grades_table_shared/gradation_container.dart';
import 'todays_lesson_card.dart';

List todaysLessons = [
  {
    'className': 'UI/UXデザイン',
    'attendanceClassmate': 30,
    'tardyClassmate': 3,
    'otherClassmate': 3
  },
  {
    'className': 'プロダクトマネジメント基礎&実践',
    'attendanceClassmate': 30,
    'tardyClassmate': 1,
    'otherClassmate': 0
  },
  {
    'className': 'UI/UXデザイン',
    'attendanceClassmate': 30,
    'tardyClassmate': 5,
    'otherClassmate': 1
  },
  {
    'className': 'マーケティング',
    'attendanceClassmate': 30,
    'tardyClassmate': 1,
    'otherClassmate': 0
  },
];

class TodaysLessonList extends StatelessWidget {
  TodaysLessonList({
    super.key,
    this.onlyShowThreeLessons = false,
  });
  final bool onlyShowThreeLessons;
  @override
  Widget build(BuildContext context) {
    return GradationContainer(
      child: Padding(
          padding: EdgeInsets.only(left: 20.0.sp),
          child: ListView.builder(
            itemCount: onlyShowThreeLessons ? 3 : todaysLessons.length,
            itemBuilder: (BuildContext context, int index) {
              var _todaysLesson = todaysLessons[index];
              return TodaysLessonCard(
                  className: _todaysLesson['className'],
                  attendanceClassmate:
                      _todaysLesson['attendanceClassmate'].toString(),
                  tardyClassmate: _todaysLesson['tardyClassmate'].toString(),
                  otherClassmate: _todaysLesson['otherClassmate'].toString());
            },
          )),
    );
  }
}
