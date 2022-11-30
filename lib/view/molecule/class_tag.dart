import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../atom/main_text.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

//TODO クラス色を選択できるようにする

class ClassTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12.w,
          height: 12.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorScheme.primary,
          ),
        ),
        SpaceBox(width: 4.w),
        MainText(
          text: 'テックフォードアカデミー',
          textStyle: headLineRegular(
            colorScheme.onBackground.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
