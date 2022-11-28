import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import 'package:vantan_connect/view/atom/border_box.dart';

class TextCard extends StatelessWidget {
  const TextCard({Key? key, required this.text, required this.padding})
      : super(key: key);

  final String text;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return BorderBox(
      radius: 12.sp,
      padding: padding,
      child: MainText(
        text: text,
        textStyle: caption1Bold(colorScheme.onBackground),
      ),
    );
  }
}
