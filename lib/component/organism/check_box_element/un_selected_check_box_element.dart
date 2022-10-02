import 'package:flutter/material.dart';
import '../../atom/space_box.dart';
import '../../atom/color_schemes.g.dart';
import '../../molecule/check_box/common_container.dart';
import '../../molecule/check_box/check_box_icon.dart';
import '../../molecule/check_box/check_box_text.dart';

class UnSelectedCheckBoxElement extends StatelessWidget {
  UnSelectedCheckBoxElement({
    super.key,
    required this.text,
    required this.textStyle,
    this.iconData,
    required this.color,
    required this.width,
    required this.height,
  });
  final String text;
  final TextStyle textStyle;
  IconData? iconData;
  final Color color;
  final double width;
  final double height;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      width: width,
      height: height,
      color: color,
      borderColor: colorScheme.onSurfaceVariant.withOpacity(0.8),
      child: Row(
        children: [
          const SpaceBox(width: 20),
          if (iconData != null) CheckBoxIcon(iconData: iconData!),
          const SpaceBox(width: 12),
          CheckBoxText(text: text, textStyle: textStyle),
        ],
      ),
    );
  }
}
