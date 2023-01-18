import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_icon.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';

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
      child: OriginalText(
        text: text,
        textStyle: textStyle,
      ),
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
        GestureDetector(
          onTap: callback,
          child: OriginalText(
            text: text,
            textStyle: textStyle,
          ),
        ),
        SpaceBox(width: spaceSize),
        OriginalIcon(
          iconData: iconData,
          iconSize: iconSize,
          iconColor: iconColor,
        ),
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
          OriginalIcon(
            iconData: Icons.menu,
            iconSize: iconSize,
            iconColor: iconColor,
          ),
          SpaceBox(width: 14.sp),
          OriginalText(
            text: text,
            textStyle: textStyle,
          ),
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
          OriginalIcon(
            iconData: Icons.menu,
            iconSize: iconSize,
            iconColor: iconColor,
          ),
          SpaceBox(width: 14.sp),
          OriginalText(text: text, textStyle: textStyle),
        ],
      ),
    );
  }
}
