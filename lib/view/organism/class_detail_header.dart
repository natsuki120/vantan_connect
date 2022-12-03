import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/molecule/on_primary_color_button_with_text.dart';
import 'package:vantan_connect/view/page/select_class_detail_page.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import '../molecule/class_tag.dart';
import '../molecule/Icon_and_text.dart';
import 'teacher_card.dart';
import '../molecule/text_in_box.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class ClassDetailHeader extends StatelessWidget {
  const ClassDetailHeader({
    super.key,
    required this.classInfo,
  });
  final Class classInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextInBox(
              width: 42.w,
              height: 27.h,
              color: colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(8.sp),
              textStyle: subHeadLineBold(colorScheme.outline),
              text: '前期',
            ),
            SpaceBox(width: 8.w),
            ClassTag(),
            Spacer(),
            OnPrimaryColorButtonWithText(
              callback: () => NavigatorPush(
                context,
                page: SelectClassDetailPage(classInfo: classInfo),
              ),
              text: '詳細',
              width: 78.w,
              height: 40.w,
            ),
          ],
        ),
        GuidanceMessage(
          mainText: classInfo.name,
          subText: classInfo.overView,
          mainTextStyle: title1Bold(colorScheme.onBackground),
          subTextStyle: bodyRegular(colorScheme.onBackground.withOpacity(0.7)),
          crossAxisAlignment: CrossAxisAlignment.start,
          spaceSize: 8.h,
        ),
        SpaceBox(height: 7.h),
        Row(
          children: [
            IconAndText(
              iconData: Icons.calendar_today_outlined,
              text: '${classInfo.frameCount}コマ',
              textStyle: callOutRegular(
                colorScheme.onBackground.withOpacity(0.5),
              ),
              spaceSize: 6.5.w,
              color: colorScheme.onBackground.withOpacity(0.5),
              mainAxisAlignment: MainAxisAlignment.start,
            ),
            SpaceBox(width: 12.w),
            IconAndText(
              iconData: Icons.videocam_off_outlined,
              text: classInfo.isOnline ? 'オンライン可' : 'オンライン不可',
              textStyle: callOutRegular(
                colorScheme.onBackground.withOpacity(0.5),
              ),
              spaceSize: 6.5.w,
              color: colorScheme.onBackground.withOpacity(0.5),
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ],
        ),
        SpaceBox(height: 16.h),
        TeacherCard(classInfo: classInfo),
      ],
    );
  }
}
