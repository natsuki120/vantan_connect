import 'package:flutter/material.dart';

class ColoredCircleContainer extends StatelessWidget {
  const ColoredCircleContainer({
    Key? key,
    required this.color,
    required this.child,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
