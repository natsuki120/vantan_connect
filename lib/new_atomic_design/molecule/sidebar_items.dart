import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_icon.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class SidebarItems extends StatelessWidget {
  const SidebarItems({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
    required this.backgroundColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        children: [
          OriginalIcon(
            iconData: iconData,
            iconSize: iconSize,
            iconColor: iconColor,
          ),
          SpaceBox(width: 11.sp),
          OriginalText(text: text, textStyle: textStyle)
        ],
      ),
    );
  }
}

class SidebarItemsText extends StatelessWidget {
  const SidebarItemsText({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
    required this.backgroundWidth,
    required this.backgroundHeight,
    required this.spaceSize,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final double backgroundWidth;
  final double backgroundHeight;
  final Color backgroundColor;
  final double spaceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: backgroundWidth,
      height: backgroundHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          SpaceBox(width: spaceSize),
          OriginalText(text: text, textStyle: textStyle),
        ],
      ),
    );
  }
}
