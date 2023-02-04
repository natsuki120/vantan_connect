import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/single/color.dart';
import '../../../../../shared/single/text_style.dart';
import 'elements/curriculum_subject_card.dart';

class CurriculumSubjectBody extends StatelessWidget {
  const CurriculumSubjectBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1年生の授業',
            style: headLineBold(black),
          ),
          SizedBox(height: 20.sp),
          CurriculumSubjectCard(
            className: 'マーケティング',
            classmate: '45',
          ),
          CurriculumSubjectCard(
            className: 'UI/UXデザイン実践',
            classmate: '63',
          ),
          CurriculumSubjectCard(
            className: 'プロダクトマネジメント基礎&実践',
            classmate: '45',
          ),
        ],
      ),
    );
  }
}
