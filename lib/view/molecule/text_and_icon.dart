import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import '../token/space_box.dart';

class TextAndIcon extends StatelessWidget {
  const TextAndIcon(
      {Key? key,
      required this.text,
      required this.textStyle,
      required this.spaceSize,
      required this.iconData,
      required this.iconColor,
      required this.mainAxisAlignment})
      : super(key: key);

  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Color iconColor;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        MainText(text: text, textStyle: textStyle),
        SpaceBox(width: spaceSize),
        Icon(
          iconData,
          color: iconColor,
          size: 18.sp,
        ),
      ],
    );
  }
}
