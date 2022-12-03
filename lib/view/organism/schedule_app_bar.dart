import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/main_text.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';
import '../token/color_schemes.g.dart';

class ScheduleAppBar extends StatelessWidget {
  const ScheduleAppBar({
    Key? key,
    required this.month,
  }) : super(key: key);

  final String month;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0.0,
      title: Row(
        children: [
          MainText(
            text: month,
            textStyle: header(colorScheme.onBackground),
          ),
          SizedBox(width: 15),
          Icon(
            Icons.arrow_drop_down,
            color: colorScheme.onBackground,
          )
        ],
      ),
      actions: [
        Icon(
          Icons.square,
          size: 12.sp,
          color: colorScheme.onBackground.withOpacity(0.7),
        ),
        SpaceBox(width: 40.sp),
        Icon(
          Icons.more_vert,
          size: 16.sp,
          color: colorScheme.onBackground.withOpacity(0.7),
        ),
        SpaceBox(width: 22.sp),
      ],
    );
  }
}
