import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../grades_table_shared/gradation_container.dart';
import 'elements/sized_box_with_central_border.dart';
import 'elements/todays_lesson_card.dart';

class TodaysLessonList extends StatelessWidget {
  const TodaysLessonList({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: ListBuilder等の予定
    return GradationContainer(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0.sp),
        child: Column(
          children: [
            TodaysLessonCard(
              className: 'UI/UXデザイン実践',
              attendanceClassmate: '30',
              tardyClassmate: '3',
              otherClassmate: '3',
            ),
            SizedBoxWithCentralBorder(height: 12, flex: 3),
            TodaysLessonCard(
              className: 'プロダクトマネジメント基礎&実践',
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
        ),
      ),
    );
  }
}
