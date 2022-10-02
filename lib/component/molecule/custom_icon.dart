import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.color, required this.iconData})
      : super(key: key);

  final Color color;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, color: color);
  }
}
