import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/description_text.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';

class ImageAndUserInfo extends StatelessWidget {
  const ImageAndUserInfo({Key? key, required this.name, required this.role})
      : super(key: key);

  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(),
        SpaceBox(width: 16.w),
        Column(
          children: [
            MainText(
              text: name,
              textStyle: headLineBold(colorScheme.onBackground),
            ),
            SpaceBox(height: 4.h),
            DescriptionText(
              text: role,
              textStyle: bodyRegular(colorScheme.onBackground),
            ),
          ],
        ),
      ],
    );
  }
}
