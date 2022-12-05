import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/view/organism/button_when_press_color_changing.dart';
import 'package:vantan_connect/view/organism/user_attendance_status.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/const_width_and_height.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/space_box.dart';

class AttendanceBookTemplate extends HookConsumerWidget {
  const AttendanceBookTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
        child: Column(
          children: [
            SpaceBox(height: 23.h),
            Row(
              children: [
                ButtonWhenPressColorChanging(
                  onChanged: true,
                  borderRadius: BorderRadius.circular(8.sp),
                  text: '出席',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
                SpaceBox(width: 8.w),
                ButtonWhenPressColorChanging(
                  onChanged: false,
                  borderRadius: BorderRadius.circular(8.sp),
                  text: '遅刻・欠席',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
                SpaceBox(width: 8.w),
                ButtonWhenPressColorChanging(
                  onChanged: false,
                  borderRadius: BorderRadius.circular(8.sp),
                  text: 'その他',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
              ],
            ),
            SpaceBox(height: 26.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 8.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 8.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 8.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 8.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 8.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
            UserAttendanceStatus(
              userName: '高橋　夏輝',
              userImgPath:
                  'https://static.amanaimages.com/imgroom/rf_preview640/11017/11017022639.jpg',
              iconData: Icons.domain,
              iconSize: 24.sp,
              iconColor: colorScheme.onBackground,
            ),
            SpaceBox(height: 4.h),
          ],
        ),
      ),
    );
  }
}
