import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/bottom_border_line.dart';

class TappableIconWithTextAboveBorderLine extends StatelessWidget {
  const TappableIconWithTextAboveBorderLine({
    Key? key,
    required this.iconData,
    required this.text,
    required this.textStyle,
    required this.spaceSize,
    required this.color,
    required this.mainAxisAlignment,
    required this.callback,
    required this.borderWidth,
    required this.borderHeight,
    required this.borderColor,
    required this.crossAxisAlignment,
    required this.spaceHeight,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Color color;
  final MainAxisAlignment mainAxisAlignment;
  final VoidCallback callback;
  final double borderWidth;
  final double borderHeight;
  final Color borderColor;
  final CrossAxisAlignment crossAxisAlignment;
  final double spaceHeight;

  @override
  Widget build(BuildContext context) {
    return BottomBorderLine(
      borderWidth: borderWidth,
      borderHeight: borderHeight,
      borderColor: borderColor,
      content: GestureDetector(
        onTap: callback,
        child: IconAndText(
          iconData: iconData,
          text: text,
          textStyle: textStyle,
          spaceSize: spaceSize,
          color: color,
          mainAxisAlignment: mainAxisAlignment,
        ),
      ),
      crossAxisAlignment: crossAxisAlignment,
      spaceHeight: spaceHeight,
    );
  }
}
