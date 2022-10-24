import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';

import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';

class CustomTabBar extends StatelessWidget with PreferredSizeWidget {
  const CustomTabBar(
      {super.key, required this.firstText, required this.secondText});

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: TabBar(
        indicatorColor: colorScheme.primary,
        tabs: [
          GuidanceMessage(
            mainText: firstText,
            mainTextStyle:
                titleSmall(FontWeight.w300, colorScheme.onBackground),
          ),
          GuidanceMessage(
            mainText: secondText,
            mainTextStyle:
                titleSmall(FontWeight.w300, colorScheme.onBackground),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
