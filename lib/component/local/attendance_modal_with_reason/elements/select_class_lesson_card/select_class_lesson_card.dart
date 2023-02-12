import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/single/color.dart';
import '../../../../shared/single/space_box.dart';
import '../../../../shared/single/text_style.dart';
import '../../../grades_table/grades_table_body/elements/grades_table_shared/grades_table_elements_card.dart';

class SelectClassLessonCard extends StatelessWidget {
  SelectClassLessonCard({
    super.key,
    required this.className,
  });
  final String className;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          //TODO: ここに写真予定
          height: 80.sp,
          width: 80.sp,
          //decoration: BoxDecoration(),
          child: Placeholder(),
        ),
        SizedBox(width: 12.sp),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 190.sp),
                child: Text(
                  maxLines: 1,
                  className,
                  style: callOutBold(black),
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SpaceBox.width(),
              GradesTableElementsCard(elementText: '第1回目')
            ],
          ),
        )
      ],
    );
  }
}
