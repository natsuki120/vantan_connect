import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/const/space_box.dart';

import 'check_box/common_container.dart';
import 'check_box/check_box_icon.dart';
import 'check_box/check_box_text.dart';

class SelectedCheckBoxElement extends StatelessWidget {
  const SelectedCheckBoxElement({
    super.key,
    required this.text,
    required this.textStyle,
  });

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      width: double.infinity,
      height: 56,
      color: colorScheme!.secondaryContainer,
      child: Row(
        children: [
          const SpaceBox(width: 20),
          const CheckBoxIcon(iconData: Icons.check),
          const SpaceBox(width: 12),
          // mainTextでもよくね？
          CheckBoxText(text: text, textStyle: textStyle),
        ],
      ),
    );
  }
}
