import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import '../../molecule/check_box/common_container.dart';

class SelectedCheckBoxElementWhichHasNoIcon extends StatelessWidget {
  SelectedCheckBoxElementWhichHasNoIcon({
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
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      width: width,
      height: height,
      color: color,
      padding: padding,
      child: MainText(text: text, textStyle: textStyle),
    );
  }
}
