import 'package:flutter/material.dart';
import '../token/color_schemes.g.dart';

class BorderBox extends StatelessWidget {
  const BorderBox({
    Key? key,
    required this.child,
    required this.radius,
    required this.padding,
  }) : super(key: key);

  final Widget child;
  final double radius;
  final EdgeInsets padding;

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
