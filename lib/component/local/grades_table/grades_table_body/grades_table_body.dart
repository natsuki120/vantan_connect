import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'elements/curriculum_subject/curriculum_subject_body.dart';
import 'elements/todays_lesson/todays_lesson_body/todays_lesson_body.dart';

class GradesTableBody extends HookWidget {
  const GradesTableBody({super.key});
  @override
  Widget build(BuildContext context) {
    final todaysLessonTabController = useTabController(initialLength: 3);
    return SingleChildScrollView(
      child: Column(
        children: [
          TodaysLessonBody(
              todaysLessonTabController: todaysLessonTabController),
          CurriculumSubjectBody(),
        ],
      ),
    );
  }
}
