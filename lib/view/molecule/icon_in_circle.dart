import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/colored_circle.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';

class IconInCircle extends StatelessWidget {
  const IconInCircle({
    Key? key,
    required this.circleSize,
    required this.iconData,
    required this.iconSize,
    required this.backgroundColor,
  }) : super(key: key);

  final double circleSize;
  final IconData iconData;
  final double iconSize;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ColoredCircle(
      backgroundColor: backgroundColor,
      child: OriginalIcon(
        iconData: iconData,
        iconSize: iconSize,
      ),
    );
  }
}
