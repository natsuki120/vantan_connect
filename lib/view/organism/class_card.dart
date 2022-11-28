import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/class_card_border.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/molecule/on_primary_color_button_with_text.dart';
import 'package:vantan_connect/view/molecule/primary_color_button_with_text.dart';
import 'package:vantan_connect/view/template/select_class_base_class_detail.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../molecule/Icon_and_text.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({
    Key? key,
    required this.iconText,
    required this.iconData,
    required this.className,
    required this.description,
    required this.primaryCallback,
    required this.onPrimaryCallback,
  }) : super(key: key);

  final String iconText;
  final IconData iconData;
  final String className;
  final String description;
  final VoidCallback primaryCallback;
  final VoidCallback onPrimaryCallback;

  @override
  Widget build(BuildContext context) {
    return ClassCardBorder(
      radius: 12.sp,
      padding: EdgeInsets.all(16.0.sp),
      child: Column(
        children: [
          IconAndText(
            iconData: iconData,
            text: iconText,
            textStyle: bodyRegular(colorScheme.onBackground.withOpacity(0.5)),
            spaceSize: 11.w,
            color: colorScheme.onBackground.withOpacity(0.5),
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          SpaceBox(height: 22.h),
          GuidanceMessage(
            mainText: className,
            subText: description,
            mainTextStyle: title2Bold(colorScheme.onBackground),
            subTextStyle: bodyRegular(
              colorScheme.onBackground.withOpacity(0.7),
            ),
            crossAxisAlignment: CrossAxisAlignment.start,
            spaceSize: 8.h,
          ),
          SpaceBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnPrimaryColorButtonWithText(
                width: 120.w,
                height: 40.h,
                text: '詳細を見る',
                callback: onPrimaryCallback,
              ),
              SpaceBox(width: 10.w),
              PrimaryColorButtonWithText(
                width: 108.w,
                height: 40.h,
                text: '選択する',
                callback: primaryCallback,
              ),
            ],
          )
        ],
      ),
    );
  }
}
