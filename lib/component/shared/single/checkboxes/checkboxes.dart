import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../space_box/space_box.dart';

class UnCheckboxes extends StatelessWidget {
  const UnCheckboxes({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Row(
        children: [
          Text(text, style: textStyle),
          SpaceBox(width: 11.sp),
          Icon(Icons.add, size: 12.sp, color: borderColor)
        ],
      ),
    );
  }
}

class Checkboxes extends StatelessWidget {
  const Checkboxes({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Row(
        children: [
          Text(text, style: textStyle),
          SpaceBox(width: 11.sp),
          Icon(Icons.check, size: 12.sp, color: borderColor)
        ],
      ),
    );
  }
}
