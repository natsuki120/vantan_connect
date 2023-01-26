import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';

class OriginalToggleIconText extends StatelessWidget {
  const OriginalToggleIconText({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Text(text, style: textStyle),
    );
  }
}

class OriginalToggleButton extends StatelessWidget {
  const OriginalToggleButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
    required this.spaceSize,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;
  final double spaceSize;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(onTap: callback, child: Text(text, style: textStyle)),
        SpaceBox(width: spaceSize),
        Icon(iconData, size: iconSize, color: iconColor),
      ],
    );
  }
}

class OriginalToggleIconTextWithMenuIcon extends StatelessWidget {
  const OriginalToggleIconTextWithMenuIcon({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Row(
        children: [
          Icon(Icons.menu, size: iconSize, color: iconColor),
          SpaceBox(width: 14.sp),
          Text(text, style: textStyle),
        ],
      ),
    );
  }
}

class OriginalToggleButtonWithMenuIcon extends StatelessWidget {
  const OriginalToggleButtonWithMenuIcon({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.callback,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final VoidCallback callback;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Row(
        children: [
          Icon(Icons.menu, size: iconSize, color: iconColor),
          SpaceBox(width: 14.sp),
          Text(text, style: textStyle),
        ],
      ),
    );
  }
}
