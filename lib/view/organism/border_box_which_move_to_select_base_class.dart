import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/border_box_with_primary_color_button_and_text.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class TitleAndBorderBoxWhichMoveToSelectBaseClass extends StatelessWidget {
  const TitleAndBorderBoxWhichMoveToSelectBaseClass({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.iconData,
    required this.width,
    required this.height,
    required this.text,
    required this.padding,
    required this.radius,
    required this.buttonPadding,
    required this.pageRoute,
    required this.titleTextStyle,
  }) : super(key: key);

  final String title;
  final TextStyle textStyle;
  final TextStyle titleTextStyle;
  final IconData iconData;
  final double width;
  final double height;
  final String text;
  final EdgeInsets padding;
  final double radius;
  final EdgeInsets buttonPadding;
  final Widget pageRoute;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleMessage(text: title, textStyle: titleTextStyle),
        SpaceBox(height: 20.h),
        BorderBoxWithPrimaryColorButtonAndText(
          width: width,
          height: height,
          callback: () => NavigatorPush(context, page: pageRoute),
          iconData: iconData,
          text: text,
          textStyle: textStyle,
          padding: padding,
          radius: radius,
          buttonPadding: buttonPadding,
        )
      ],
    );
  }
}
