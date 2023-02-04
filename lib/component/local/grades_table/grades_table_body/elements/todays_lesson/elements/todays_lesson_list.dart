import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/todays_lesson_card.dart';

class TodaysLessonList extends StatelessWidget {
  const TodaysLessonList({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: ListBuilder等の予定
    return Column(
      children: [
        TodaysLessonCard(
          className: 'UI/UXデザイン実践',
          attendanceClassmate: '30',
          tardyClassmate: '3',
          otherClassmate: '3',
        ),
        SizedBox(height: 6.sp),
        TodaysLessonCard(
          className: 'UI/UXデザイン実践',
          attendanceClassmate: '30',
          tardyClassmate: '3',
          otherClassmate: '3',
        ),
        SizedBox(height: 6.sp),
        TodaysLessonCard(
          className: 'UI/UXデザイン実践',
          attendanceClassmate: '30',
          tardyClassmate: '3',
          otherClassmate: '3',
        ),
      ],
    );
  }
}
