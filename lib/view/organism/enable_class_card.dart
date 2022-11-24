import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/border_line.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/atom/colored_border_box.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/molecule/primary_color_button.dart';
import 'package:vantan_connect/view/organism/text_card.dart';

class EnableClassCard extends StatelessWidget {
  const EnableClassCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBorderBox(
      color: colorScheme.primaryContainer.withOpacity(0.35),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              TextCard(text: '1限'),
              TextCard(text: '1限'),
              Spacer(),
              CircleAvatar(),
            ],
          ),
          SpaceBox(height: 10),
          GuidanceMessage(
            mainText: 'データサイエンスクラス',
            subText:
                '様々なデータから知見や洞察を引き出し、ビジネスに付加価値を提供する。データの可視化(ビジュアライゼーション)が意外と重要。',
            mainTextStyle: callOutBold(colorScheme.onBackground),
            subTextStyle: callOutRegular(
              colorScheme.onBackground.withOpacity(0.7),
            ),
            crossAxisAlignment: CrossAxisAlignment.start,
            spaceSize: 7.h,
          ),
          SpaceBox(height: 24),
          Row(
            children: [
              Spacer(flex: 4),
              IconAndText(
                iconData: Icons.access_time,
                color: colorScheme.onBackground.withOpacity(0.5),
                text: '50分 ×2',
                textStyle: bodyRegular(colorScheme.onBackground),
                spaceSize: 10,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              Spacer(),
              IconAndText(
                iconData: Icons.access_time,
                color: colorScheme.onBackground.withOpacity(0.5),
                text: '50分 ×2',
                textStyle: bodyRegular(colorScheme.onBackground),
                spaceSize: 10,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              Spacer(),
              IconAndText(
                iconData: Icons.access_time,
                color: colorScheme.onBackground.withOpacity(0.5),
                text: '50分 ×2',
                textStyle: bodyRegular(colorScheme.onBackground),
                spaceSize: 10,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              Spacer(),
            ],
          ),
          BorderLine(),
          SpaceBox(height: 15),
          Row(
            children: [
              IconAndText(
                iconData: Icons.error,
                color: colorScheme.primary,
                text: '進行中の予定です',
                textStyle: Caption1(colorScheme.onBackground),
                spaceSize: 14,
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              Spacer(),
              PrimaryColorButton(
                callback: () {},
                width: 108,
                height: 40,
                child: MainText(
                  text: '出席確認',
                  textStyle: bodyBold(colorScheme.background),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
