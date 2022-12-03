import 'package:flutter/material.dart';

class ColoredCircle extends StatelessWidget {
  const ColoredCircle({
    Key? key,
    required this.child,
    required this.backgroundColor,
    required this.size,
  }) : super(key: key);

  final Widget child;
  final Color backgroundColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
