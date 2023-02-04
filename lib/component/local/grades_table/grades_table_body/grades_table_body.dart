import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elements/curriculum_subject/curriculum_subject_body.dart';
import 'elements/todays_lesson/elements/today_lesson_header.dart';
import 'elements/todays_lesson/todays_lesson_body.dart';

class GradesTableBody extends StatelessWidget {
  const GradesTableBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TodayLessonHeader(date: '3/21', day: '火曜日'),
            SizedBox(height: 20.sp),
            TodaysLessonBody(),
            SizedBox(height: 16.sp),
            CurriculumSubjectBody(),
          ],
        ),
      ),
    );
  }
}
