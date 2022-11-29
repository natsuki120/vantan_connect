import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../atom/primary_color_button.dart';

class PrimaryColorButtonWithIconAndText extends StatelessWidget {
  const PrimaryColorButtonWithIconAndText({
    Key? key,
    required this.iconData,
    required this.text,
    required this.spaceSize,
    required this.iconColor,
    required this.mainAxisAlignment,
    required this.textStyle,
    required this.width,
    required this.height,
    required this.iconSize,
    required this.callback,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Color iconColor;
  final MainAxisAlignment mainAxisAlignment;
  final double width;
  final double height;
  final double iconSize;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return PrimaryColorButton(
      width: width,
      height: height,
      callback: callback,
      child: Row(
        children: [
          OriginalIcon(iconData: iconData, iconSize: iconSize),
          SpaceBox(width: spaceSize),
          MainText(text: text, textStyle: textStyle)
        ],
      ),
    );
  }
}
