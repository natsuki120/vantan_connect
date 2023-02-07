import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/border_line.dart';
import 'package:vantan_connect/component/shared/single/color.dart';
import 'package:vantan_connect/component/shared/single/text_style.dart';

import '../../../shared/single/space_box.dart';

class StudentListParts extends StatelessWidget {
  const StudentListParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 46.sp,
              height: 28.sp,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: primary10,
                borderRadius: BorderRadius.circular(4.sp),
              ),
              child: Text('出席', style: bodyRegular(midEmphasis)),
            ),
            SpaceBox(width: 20.sp),
            Text('高橋夏輝', style: bodyBold(highEmphasis)),
            Spacer(),
            Text('7:30'),
          ],
        ),
        SpaceBox(height: 15.sp),
        BorderLine(),
      ],
    );
  }
}

class NotAttendedStudent extends StatelessWidget {
  const NotAttendedStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 46.sp,
              height: 28.sp,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: tertiaryPale,
                borderRadius: BorderRadius.circular(4.sp),
              ),
              child: Text('欠席', style: bodyRegular(midEmphasis)),
            ),
            SpaceBox(width: 20.sp),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('高橋夏輝', style: bodyBold(highEmphasis)),
                      Spacer(),
                      Text('7:30'),
                    ],
                  ),
                  SpaceBox(height: 12.sp),
                  Placeholder(fallbackWidth: 276.sp, fallbackHeight: 61.sp),
                ],
              ),
            )
          ],
        ),
        SpaceBox(height: 15.sp),
        BorderLine(),
      ],
    );
  }
}

class LateStudent extends StatelessWidget {
  const LateStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 46.sp,
              height: 28.sp,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: secondaryPale,
                borderRadius: BorderRadius.circular(4.sp),
              ),
              child: Text('遅刻', style: bodyRegular(midEmphasis)),
            ),
            SpaceBox(width: 20.sp),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('高橋夏輝', style: bodyBold(highEmphasis)),
                      Spacer(),
                      Text('7:30'),
                    ],
                  ),
                  SpaceBox(height: 12.sp),
                  Placeholder(fallbackWidth: 276.sp, fallbackHeight: 61.sp),
                ],
              ),
            )
          ],
        ),
        SpaceBox(height: 15.sp),
        BorderLine(),
      ],
    );
  }
}

class OtherStudent extends StatelessWidget {
  const OtherStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 61.sp,
              height: 28.sp,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: surfaceSecondary,
                borderRadius: BorderRadius.circular(4.sp),
              ),
              child: Text(
                '未反応',
                style: bodyRegular(midEmphasis),
              ),
            ),
            SpaceBox(width: 20.sp),
            Text('高橋夏輝', style: bodyBold(highEmphasis)),
            Spacer(),
            Text('7:30'),
          ],
        ),
        SpaceBox(height: 15.sp),
        BorderLine(),
      ],
    );
  }
}
