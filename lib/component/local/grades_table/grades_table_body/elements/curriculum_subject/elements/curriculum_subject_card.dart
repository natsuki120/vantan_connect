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
        child: Container(
          height: 214.sp,
          child: Column(
            children: [
              //TODO: 写真用のContainer
              SizedBox(
                width: 350.sp,
                height: 120.sp,
                child: Placeholder(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.sp),
                child: Container(
                  width: 350.sp,
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
                          SpaceBox(width: 8.sp),
                          Text(
                            className,
                            style: bodyBold(black),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          //TODO:　要素を取得しその分だけ表示させる
                          GradesTableElementsCard(elementText: '1年生'),
                          SizedBox(width: 8.sp),
                          GradesTableElementsCard(elementText: '2年生'),
                          Spacer(),
                          Text('$classmate人が履修中',
                              style: caption1Regular(lowEmphasis)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
