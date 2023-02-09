import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/color/color.dart';

import '../../../../../shared/single/text_style/text_style.dart';
import '../../../../grades_table_body/elements/curriculum_subject/elements/curriculum_subject_card/curriculum_subject_card.dart';

List curriculumSubjectList = [
  {
    'className': 'マーケティング',
    'classmate': 45,
  },
  {
    'className': 'UI/UXデザイン実践',
    'classmate': 63,
  },
  {
    'className': 'プロダクトマネジメント基礎&実践',
    'classmate': 45,
  },
];

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
