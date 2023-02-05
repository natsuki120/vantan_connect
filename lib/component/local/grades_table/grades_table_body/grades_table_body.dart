import 'package:flutter/material.dart';

import 'elements/curriculum_subject/curriculum_subject_body.dart';
import 'elements/todays_lesson/elements/todays_lesson_header.dart';
import 'elements/todays_lesson/todays_lesson_body.dart';

class GradesTableBody extends StatelessWidget {
  const GradesTableBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TodaysLessonHeader(date: '3/21', day: '火曜日'),
          TodaysLessonBody(),
          CurriculumSubjectBody(),
        ],
      ),
    );
  }
}
