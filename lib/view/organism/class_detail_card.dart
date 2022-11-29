import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../atom/class_tag.dart';
import '../atom/colored_border_box.dart';
import '../atom/main_text.dart';
import '../molecule/Icon_and_text.dart';
import '../molecule/teacher_card.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class ClassDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            //atom候補
            Container(
              width: 42.w,
              height: 27.h,
              decoration: BoxDecoration(
                color: colorScheme.surfaceVariant.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text('前期')),
            ),
            SpaceBox(width: 8.w),
            ClassTag(),
            Spacer(),
            //候補 書き方が少し気になる
            Container(
              width: 78.w,
              height: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: colorScheme.onBackground.withOpacity(0.5)),
              ),
              child: Center(
                  child: MainText(
                      text: '詳細',
                      textStyle: headLineBold(colorScheme.primary))),
            ),
          ],
        ),
        //候補
        Row(
          children: [
            MainText(
              text: 'UI/UXデザイン',
              textStyle: title1Bold(colorScheme.onBackground),
            ),
            SpaceBox(width: 8.w),
            ColoredBorderBox(
              child: MainText(
                text: '履修中',
                textStyle: caption1Regular(colorScheme.background),
              ),
              padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
              color: Color(0xffE7A15F),
            ),
          ],
        ),
        SpaceBox(height: 8),
        MainText(
          text:
              'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
          textStyle: bodyRegular(colorScheme.onBackground),
        ),
        SpaceBox(height: 7.h),
        //TODO atom作成　(仮)GreyIconAndText
        //icon text のみで完結するもの
        Row(
          children: [
            IconAndText(
              iconData: Icons.calendar_today,
              color: colorScheme.onBackground.withOpacity(0.5),
              text: '9コマ',
              textStyle: bodyRegular(
                colorScheme.onBackground.withOpacity(0.5),
              ),
              spaceSize: 6.5.w,
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            SpaceBox(width: 12.w),
            IconAndText(
              iconData: Icons.videocam_off_outlined,
              color: colorScheme.onBackground.withOpacity(0.5),
              text: 'オフライン不可',
              textStyle: bodyRegular(
                colorScheme.onBackground.withOpacity(0.5),
              ),
              spaceSize: 10.w,
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            SpaceBox(height: 12.h),
          ],
        ),
        SpaceBox(height: 16.h),
        TeacherCard(
          teacherName: '高橋　夏樹',
          teacherRole: 'Flutterエンジニア',
        ),
      ],
    );
  }
}
