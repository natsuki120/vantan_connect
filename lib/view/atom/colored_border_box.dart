import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColoredBorderBox extends StatelessWidget {
  const ColoredBorderBox(
      {Key? key,
      required this.child,
      required this.padding,
      required this.color})
      : super(key: key);

  final Widget child;
  final EdgeInsets padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
