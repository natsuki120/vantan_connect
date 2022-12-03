import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/border_box.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../atom/colored_circle.dart';

class BorderBoxWithPrimaryColorButtonAndText extends StatelessWidget {
  const BorderBoxWithPrimaryColorButtonAndText({
    Key? key,
    required this.callback,
    required this.iconData,
    required this.text,
    required this.textStyle,
    required this.padding,
    required this.radius,
    required this.buttonPadding,
    required this.width,
    required this.height,
  }) : super(key: key);

  final VoidCallback callback;
  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final double radius;
  final EdgeInsets buttonPadding;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return BorderBox(
      padding: padding,
      child: GestureDetector(
        child: Column(
          children: [
            ColoredCircle(
              size: 40.sp,
              backgroundColor: colorScheme.primary,
              child: OriginalIcon(
                iconData: Icons.add,
                iconSize: 30.sp,
                iconColor: colorScheme.background,
              ),
            ),
            SpaceBox(),
            MainText(text: text, textStyle: textStyle),
          ],
        ),
        onTap: callback,
      ),
      radius: radius,
    );
  }
}
