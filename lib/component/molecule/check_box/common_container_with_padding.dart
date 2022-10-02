import 'package:flutter/material.dart';

class CommonContainerWithPadding extends StatelessWidget {
  CommonContainerWithPadding({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.child,
    this.borderColor,
    this.padding,
  }) : super(key: key);

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
      padding: padding,
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
