import 'package:flutter/material.dart';

class RadioButtonIcon extends StatelessWidget {
  const RadioButtonIcon({super.key, required this.iconData});

  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Icon(iconData);
  }
}
