import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/single/space_box.dart';
import '../../shared/single/test_style.dart';

class SelectedChips extends StatelessWidget {
  const SelectedChips({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Text(text, style: textStyle),
    );
  }
}

class UnSelectedChips extends StatelessWidget {
  const UnSelectedChips({
    Key? key,
    required this.text,
    required this.textColor,
    required this.padding,
    required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final EdgeInsets padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.sp),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          Icon(Icons.add, size: 12.sp, color: textColor),
          SpaceBox(width: 10.sp),
          Text(text, style: bodyBold(textColor)),
        ],
      ),
    );
  }
}
