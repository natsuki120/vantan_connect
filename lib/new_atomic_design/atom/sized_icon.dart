import 'package:flutter/material.dart';

class SizedIcon extends StatelessWidget {
  const SizedIcon({Key? key, required this.iconSize}) : super(key: key);

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.menu, size: iconSize);
  }
}
