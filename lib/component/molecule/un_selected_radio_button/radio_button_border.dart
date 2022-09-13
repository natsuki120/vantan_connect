import 'package:flutter/material.dart';

class RadioButtonBorder extends StatelessWidget {
  RadioButtonBorder({
    super.key,
    required this.child,
    required this.color,
    required this.borderColor,
  });

  final Widget child;
  final Color color;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 56,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
