import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/main_text.dart';

import '../token/space_box.dart';
import '../token/style_by_platform.dart';
import '../token/color_schemes.g.dart';

class IconTextAndDetail extends StatelessWidget {
  const IconTextAndDetail({
    Key? key,
    required this.iconData,
    required this.text,
    required this.spaceSize,
    required this.detailText,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final double spaceSize;
  final String detailText;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        iconData,
        size: 18.sp,
      ),
      SpaceBox(width: spaceSize),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainText(
            text: text,
            textStyle: headLineRegular(colorScheme.onBackground),
          ),
          MainText(
              text: detailText,
              textStyle:
                  caption1Regular(colorScheme.onBackground.withOpacity(0.5))),
        ],
      )
    ]);
  }
}
