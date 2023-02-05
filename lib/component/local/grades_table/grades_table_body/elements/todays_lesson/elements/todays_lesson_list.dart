import 'package:flutter/material.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/elements/sized_box_with_central_border.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/elements/elements/todays_lesson_card.dart';

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
        SizedBoxWithCentralBorder(height: 12, flex: 3),
        TodaysLessonCard(
          className: 'UI/UXデザイン実践',
          attendanceClassmate: '30',
          tardyClassmate: '3',
          otherClassmate: '3',
        ),
        SizedBoxWithCentralBorder(height: 12, flex: 3),
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
