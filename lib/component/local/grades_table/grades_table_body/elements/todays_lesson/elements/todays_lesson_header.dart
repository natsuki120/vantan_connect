import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/single/space_box.dart';
import '../../../../../../shared/single/color.dart';
import '../../../../../../shared/single/text_style.dart';

class TodaysLessonHeader extends StatelessWidget {
  TodaysLessonHeader({
    super.key,
    required this.date,
    required this.day,
  });
  final String date;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(date, style: caption1Bold(lowEmphasis)),
                SpaceBox(width: 5.w),
                Text(day, style: caption1Bold(lowEmphasis)),
              ],
            ),
            Text('今日の授業', style: title2Bold(black)),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  '全て表示',
                  style: headLineRegular(lowEmphasis),
                )),
          ],
        )
      ],
    );
  }
}
