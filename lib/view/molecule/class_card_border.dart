import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/border_box.dart';

class ClassCardBorder extends StatelessWidget {
  const ClassCardBorder({
    Key? key,
    required this.child,
    required this.padding,
    required this.radius,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return BorderBox(child: child, radius: radius, padding: padding);
  }
}
