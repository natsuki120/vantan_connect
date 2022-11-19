import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/organism/text_card.dart';

class ClassCard extends StatelessWidget {
  const ClassCard(
      {Key? key, required this.timelineList, required this.underWidget})
      : super(key: key);

  final List timelineList;
  final Widget underWidget;

  @override
  Widget build(BuildContext context) {
    return BorderBox(
      radius: 12,
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
          underWidget,
        ],
      ),
    );
  }
}
