import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysLessonCard extends StatelessWidget {
  const TodaysLessonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            //ここに画像
            ),
        SizedBox(width: 12.sp),
        Column(
          children: [
            Row(
              children: [
                Text('UI/UXデザイン実践'),
                Text('一回'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('仮置き'),
                    Text('仮置き'),
                  ],
                ),
                Column(
                  children: [
                    Text('仮置き'),
                    Text('仮置き'),
                  ],
                ),
                Column(
                  children: [
                    Text('仮置き'),
                    Text('仮置き'),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
