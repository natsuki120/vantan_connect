import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/single/color.dart';
import '../../../../../../shared/single/space_box.dart';
import '../../../../../../shared/single/text_style.dart';
import '../../grades_table_shared/gradation_container.dart';
import '../../grades_table_shared/grades_table_elements_card.dart';

class CurriculumSubjectCard extends StatelessWidget {
  const CurriculumSubjectCard({
    super.key,
    required this.className,
    required this.classmate,
  });

  final String className;
  final String classmate;

  @override
  Widget build(BuildContext context) {
    return GradationContainer(
      child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Stack(
          children: [
            Positioned(
              top: 64.sp,
              right: 8.sp,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: primary,
                //TODO: 写真用　backgroundImage:
              ),
            ),
            Column(
              children: [
                //TODO: 写真用のContainer
                SizedBox(
                  width: 350.sp,
                  height: 120.sp,
                  child: Placeholder(),
                ),
                SizedBox(height: 12.sp),
                Container(
                  height: 70.sp,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //すでに同じようなコンポーネントがあるかも？
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.sp,
                              vertical: 6.sp,
                            ),
                            decoration: BoxDecoration(
                              color: surfaceTertiary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(child: Text('前期')),
                          ),
                          SpaceBox.width(),
                          Text(
                            className,
                            style: bodyBold(black),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          GradesTableElementsCard(elementText: '1年生'),
                          SpaceBox.width(),
                          GradesTableElementsCard(elementText: '2年生'),
                          Spacer(),
                          Text('$classmate人が履修中',
                              style: caption1Regular(lowEmphasis)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
