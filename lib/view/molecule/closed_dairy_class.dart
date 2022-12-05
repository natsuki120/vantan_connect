import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/main_text.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class CloseDairyClass extends StatelessWidget {
  const CloseDairyClass({
    Key? key,
    required this.className,
  }) : super(key: key);

  final String className;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.w,
      height: 52.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: colorScheme.onBackground.withOpacity(0.5))),
      child: Row(
        children: [
          SpaceBox(width: 16.w),
          MainText(
            text: className,
            textStyle: headLineBold(colorScheme.onBackground.withOpacity(0.7)),
          ),
          Spacer(),
          Icon(Icons.arrow_drop_down),
          SpaceBox(width: 23.w),
        ],
      ),
    );
  }
}
