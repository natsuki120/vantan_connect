import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/custom_icon.dart';

import '../atom/color_schemes.g.dart';
import '../atom/space_box.dart';
import '../molecule/style_by_platform.dart';
import '../molecule/tappable_text.dart';

class BackButtonTextWithIcon extends StatelessWidget {
  const BackButtonTextWithIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIcon(
            color: colorScheme.onBackground, iconData: Icons.arrow_back_ios),
        TappableText(
          text: '戻る',
          textStyle: labelLarge(FontWeight.w300, colorScheme.onBackground),
          voidCallback: () {},
        ),
        SpaceBox(),
      ],
    );
  }
}
