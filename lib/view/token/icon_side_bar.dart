import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/selectable_icon.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class IconSideBar extends StatelessWidget {
  const IconSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
      child: Column(
        children: [
          SpaceBox(height: 58.h),
          SelectableIcon(
            iconData: Icons.today_outlined,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 20.h),
          SelectableIcon(
            iconData: Icons.search,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 20.h),
          SelectableIcon(
            iconData: Icons.mic_none,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 20.h),
          SelectableIcon(
            iconData: Icons.chat_outlined,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 20.h),
          SelectableIcon(
            iconData: Icons.share_outlined,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 20.h),
          SelectableIcon(
            iconData: Icons.drafts_outlined,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 20.h),
          SelectableIcon(
            iconData: Icons.bookmark_border,
            iconSize: 30.sp,
            iconColor: colorScheme.onBackground.withOpacity(0.7),
          ),
          SpaceBox(height: 23.h),
          RowBorderLine(),
          SpaceBox(height: 20),
          Image.asset('images/Course icon.png'),
          SpaceBox(height: 20.h),
          Image.asset('images/Course icon.png'),
          SpaceBox(height: 20.h),
          Image.asset('images/Course icon.png'),
          SpaceBox(height: 20.h),
          Image.asset('images/Course icon.png'),
          SpaceBox(height: 20.h),
          Image.asset('images/Course icon.png'),
          SpaceBox(height: 20.h),
          Image.asset('images/Course icon.png'),
        ],
      ),
    );
  }
}
