import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/main_text.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class TimeTag extends StatelessWidget {
  const TimeTag({
    Key? key,
    required this.time,
    required this.text,
  }) : super(key: key);

  final String time;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20.w,
          height: 12.h,
          decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
        ),
        SpaceBox(width: 16.w),
        MainText(
          text: time,
          textStyle: headLineBold(colorScheme.onBackground),
        ),
        Spacer(),
        MainText(
          text: text,
          textStyle: caption1Regular(colorScheme.onBackground.withOpacity(0.7)),
        ),
        SpaceBox(
          width: 16.w,
        ),
      ],
    );
  }
}
