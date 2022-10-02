import 'package:flutter/material.dart';

class CheckBoxIcon extends StatelessWidget {
  const CheckBoxIcon({super.key, required this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: 20,
    );
  }
}
