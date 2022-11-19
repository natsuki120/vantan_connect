import 'package:flutter/material.dart';
import '../atom/color_schemes.g.dart';

class BorderBox extends StatelessWidget {
  const BorderBox(
      {Key? key,
      required this.child,
      required this.padding,
      required this.radius})
      : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: colorScheme.onBackground.withOpacity(0.6)),
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
