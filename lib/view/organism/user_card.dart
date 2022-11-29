import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/molecule/user_card_border.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../molecule/image_and_user_info.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {Key? key,
      required this.mainText,
      required this.subText,
      required this.crossAxisAlignment,
      required this.spaceSize})
      : super(key: key);
  final String mainText;
  final String subText;
  final CrossAxisAlignment crossAxisAlignment;
  final double spaceSize;

  @override
  Widget build(BuildContext context) {
    return UserCardBorder(
      radius: 12,
      padding: EdgeInsets.symmetric(
        horizontal: 16.sp,
        vertical: 20.sp,
      ),
      child: ImageAndUserInfo(
        widget: GuidanceMessage(
          mainText: mainText,
          subText: subText,
          mainTextStyle: headLineBold(colorScheme.onBackground),
          subTextStyle: bodyRegular(colorScheme.onBackground.withOpacity(0.7)),
          crossAxisAlignment: crossAxisAlignment,
          spaceSize: spaceSize,
        ),
      ),
    );
  }
}
