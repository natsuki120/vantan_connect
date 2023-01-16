import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/border_line.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class BottomBorderLine extends StatelessWidget {
  const BottomBorderLine({
    Key? key,
    required this.crossAxisAlignment,
    required this.content,
    required this.borderWidth,
    required this.borderHeight,
    required this.borderColor,
    required this.spaceHeight,
  }) : super(key: key);

  final CrossAxisAlignment crossAxisAlignment;
  final Widget content;
  final double borderWidth;
  final double borderHeight;
  final Color borderColor;
  final double spaceHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        content,
        SpaceBox(height: spaceHeight),
        BorderLine(width: borderWidth, height: borderHeight, color: borderColor)
      ],
    );
  }
}
