import 'package:flutter/material.dart';

class SelectableIcon extends StatelessWidget {
  const SelectableIcon(
      {Key? key,
      required this.iconData,
      required this.iconSize,
      required this.iconColor})
      : super(key: key);

  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: iconSize,
      color: iconColor,
    );
  }
}
