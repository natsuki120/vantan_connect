import 'package:flutter/material.dart';

import '../../atom/color_schemes.g.dart';
import '../../molecule/check_box/check_box_text.dart';
import '../../molecule/check_box/common_container.dart';

class UnSelectedCheckBoxElementWhichHasNoIcon extends StatefulWidget {
  UnSelectedCheckBoxElementWhichHasNoIcon({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.color,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final Color color;
  final double width;
  final double height;

  @override
  State<UnSelectedCheckBoxElementWhichHasNoIcon> createState() =>
      _UnSelectedCheckBoxElementWhichHasNoIconState();
}

class _UnSelectedCheckBoxElementWhichHasNoIconState
    extends State<UnSelectedCheckBoxElementWhichHasNoIcon> {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      width: widget.width,
      height: widget.height,
      color: widget.color,
      borderColor: colorScheme.onSurfaceVariant.withOpacity(0.8),
      child: CheckBoxText(text: widget.text, textStyle: widget.textStyle),
    );
  }
}
