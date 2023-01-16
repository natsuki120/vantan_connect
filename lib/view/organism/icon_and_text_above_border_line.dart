import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/bottom_border_line.dart';

class IconAndTextAboveBorderLine extends StatelessWidget {
  const IconAndTextAboveBorderLine({
    Key? key,
    required this.iconData,
    required this.text,
    required this.textStyle,
    required this.spaceSize,
    required this.color,
    required this.mainAxisAlignmentBetweenBorderLine,
    required this.borderWidth,
    required this.borderHeight,
    required this.borderColor,
    required this.spaceHeight,
    required this.bottomBorderCrossAxisAlignment,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Color color;
  final MainAxisAlignment mainAxisAlignmentBetweenBorderLine;
  final CrossAxisAlignment bottomBorderCrossAxisAlignment;
  final double borderWidth;
  final double borderHeight;
  final Color borderColor;
  final double spaceHeight;

  @override
  Widget build(BuildContext context) {
    return BottomBorderLine(
      content: IconAndText(
        iconData: iconData,
        text: text,
        textStyle: textStyle,
        spaceSize: spaceSize,
        color: color,
        mainAxisAlignment: mainAxisAlignmentBetweenBorderLine,
      ),
      borderWidth: borderWidth,
      borderHeight: borderHeight,
      borderColor: borderColor,
      spaceHeight: spaceHeight,
      crossAxisAlignment: bottomBorderCrossAxisAlignment,
    );
  }
}
