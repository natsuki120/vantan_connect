import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/colored_border_box.dart';
import '../token/style_by_platform.dart';
import '../token/color_schemes.g.dart';
import '../molecule/image_and_user_info.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({
    Key? key,
    required this.teacherName,
    required this.teacherRole,
  }) : super(key: key);

  final String teacherName;
  final String teacherRole;

  @override
  Widget build(BuildContext context) {
    return ColoredBorderBox(
      color: colorScheme.surfaceVariant.withOpacity(0.5),
      padding: EdgeInsets.symmetric(
        horizontal: 16.sp,
        vertical: 20.sp,
      ),
      child: Row(
        children: [
          ImageAndUserInfo(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teacherName,
                  style: headLineBold(colorScheme.onBackground),
                ),
                Text(
                  teacherRole,
                  style: headLineRegular(colorScheme.onBackground),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
