import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_circle.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class ColorCircleWithText extends StatelessWidget {
  const ColorCircleWithText({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorCircle(width: width, height: height, color: color),
        SpaceBox(width: 13.sp),
        MainText(text: text, textStyle: textStyle)
      ],
    );
  }
}
