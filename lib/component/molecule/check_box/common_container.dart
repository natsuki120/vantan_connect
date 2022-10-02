import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  CommonContainer(
      {super.key,
      required this.child,
      required this.width,
      required this.height,
      required this.color,
      this.borderColor,
      this.padding});

  final double width;
  final double height;
  final Color color;
  final Widget child;
  Color? borderColor;
  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor != null ? borderColor! : color),
      ),
      child: child,
    );
  }
}
