import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({
    Key? key,
    required this.iconData,
    required this.text,
    required this.textStyle,
    required this.spaceSize,
    required this.color,
    required this.mainAxisAlignment,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Color color;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          iconData,
          color: color,
          size: 18.sp,
        ),
        SpaceBox(width: spaceSize),
        MainText(text: text, textStyle: textStyle),
      ],
    );
  }
}
