import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_icon.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/molecule/buttons.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class SelectBaseClassTemplate extends StatelessWidget {
  const SelectBaseClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 24.sp),
            OriginalText(text: 'ベースクラス一覧', textStyle: title1Bold(highEmphasis)),
            SpaceBox(height: 40.sp),
            Container(
              width: 358.sp,
              height: 253.sp,
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.sp),
                border: Border.all(color: midEmphasis.withOpacity(0.4)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      OriginalIcon(
                        iconData: Icons.today,
                        iconSize: 18.sp,
                        iconColor: lowEmphasis.withOpacity(0.5),
                      ),
                      SpaceBox(width: 11.sp),
                      OriginalText(
                        text: '9コマ',
                        textStyle: bodyRegular(lowEmphasis.withOpacity(0.5)),
                      ),
                      SpaceBox(width: 26.sp),
                      OriginalIcon(
                        iconData: Icons.videocam_outlined,
                        iconSize: 18.sp,
                        iconColor: lowEmphasis.withOpacity(0.5),
                      ),
                      SpaceBox(width: 11.sp),
                      OriginalText(
                        text: 'オンライン可',
                        textStyle: bodyRegular(lowEmphasis.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  SpaceBox(height: 22.sp),
                  OriginalText(
                    text: 'UI/UXデザイン実践',
                    textStyle: title2Bold(Colors.black),
                  ),
                  SpaceBox(height: 8.sp),
                  OriginalText(
                    text:
                        'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
                    textStyle: bodyRegular(midEmphasis.withOpacity(0.7)),
                  ),
                  SpaceBox(height: 24.sp),
                  Row(
                    children: [
                      OriginalEnabledOutLinedButton(
                        text: '詳細を見る',
                        textStyle: bodyBold(primary),
                        borderColor: midEmphasis,
                        callback: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
