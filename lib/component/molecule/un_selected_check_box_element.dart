import 'package:flutter/material.dart';
import '../../const/space_box.dart';
import '../atom/color_schemes.g.dart';
import 'check_box/common_container.dart';
import 'check_box/check_box_icon.dart';
import 'check_box/check_box_text.dart';

class UnSelectedCheckBox extends StatelessWidget {
  const UnSelectedCheckBox({
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
      color: colorScheme!.background,
      borderColor: colorScheme!.onSurfaceVariant.withOpacity(0.8),
      child: Row(
        children: [
          const SpaceBox(width: 20),
          const CheckBoxIcon(iconData: Icons.add),
          const SpaceBox(width: 12),
          CheckBoxText(text: text, textStyle: textStyle),
        ],
      ),
    );
  }
}
