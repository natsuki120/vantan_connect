import 'package:flutter/material.dart';

class OriginalIcon extends StatelessWidget {
  const OriginalIcon({Key? key, required this.iconData, required this.iconSize})
      : super(key: key);

  final IconData iconData;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, size: iconSize);
  }
}
