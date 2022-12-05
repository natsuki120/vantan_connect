import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '..//molecule/closed_dairy_class.dart';
import '../molecule/open_dairy_class.dart';
import '../molecule/text_in_box.dart';
import '../molecule/time_tag.dart';
import '../molecule/Icon_and_text.dart';
import '../token/style_by_platform.dart';
import '../token/color_schemes.g.dart';

class ScheduleClassCard extends StatelessWidget {
  const ScheduleClassCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TimeTag(time: '9:30', text: '1時限目'),
      SizedBox(height: 8.h),
      Container(
        width: 334.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            OpenDairyClass(
                className: 'クリエイティブコーディング',
                classLong: '50分',
                teacherName: '高橋　夏樹',
                schoolPlace: 'バンタンデザイン研究所',
                classRoom: '601教室(6F)'),
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconAndText(
                    iconData: Icons.edit,
                    text: '遅刻・欠席',
                    textStyle: headLineRegular(colorScheme.onBackground),
                    spaceSize: 10.25.w,
                    color: colorScheme.onBackground.withOpacity(0.5),
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  SizedBox(width: 24),
                  TextInBox(
                    width: 78.w,
                    height: 40.w,
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(100),
                    textStyle: headLineBold(Colors.white),
                    text: '詳細',
                  ),
                  SizedBox(width: 16.w),
                ],
              ),
            ),
          ],
        ),
      ),
      //TODO おそらくIf文で制御？　今回は擬似的に表示させている
      SizedBox(height: 44.h),
      TimeTag(time: '10:30', text: '2時限目'),
      SizedBox(height: 12.h),
      CloseDairyClass(className: 'UI&UX'),
      //
      SizedBox(height: 44.h),
      TimeTag(time: '11:30', text: '3時限目'),
      SizedBox(height: 12.h),
      CloseDairyClass(className: 'UI&UX'),
      //
      SizedBox(height: 44.h),
      TimeTag(time: '13:30', text: '4時限目'),
      SizedBox(height: 12.h),
      CloseDairyClass(className: 'UI&UX'),
    ]);
  }
}
