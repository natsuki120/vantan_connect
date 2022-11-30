import 'package:flutter/material.dart';

class ColoredCircle extends StatelessWidget {
  const ColoredCircle({
    Key? key,
    required this.child,
    required this.backgroundColor,
  }) : super(key: key);

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
