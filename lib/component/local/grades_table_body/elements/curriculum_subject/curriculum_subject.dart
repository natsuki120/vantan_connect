import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/single/token/color/color.dart';
import '../../../../shared/single/token/text_style/text_style.dart';
import '../../elements/curriculum_subject/hooks/hooks.dart';
import 'elements/curriculum_subject_card/curriculum_subject_card.dart';

class CurriculumSubjectBody extends StatelessWidget {
  const CurriculumSubjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.sp, left: 20.sp),
          child: Text(
            '1年生の授業',
            style: headLineBold(black),
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: curriculumSubjectList.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            var curriculumSubject = curriculumSubjectList[index];
            return CurriculumSubjectCard(
              className: curriculumSubject['className'],
              classmate: curriculumSubject['classmate'].toString(),
            );
          },
        )
      ],
    );
  }
}
