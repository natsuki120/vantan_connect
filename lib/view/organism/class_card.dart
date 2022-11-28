import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/colored_border_box.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';
import 'package:vantan_connect/view/molecule/image_and_user_info.dart';
import 'package:vantan_connect/view/organism/text_card.dart';
import '../molecule/Icon_and_text.dart';

class ClassCard extends StatelessWidget {
  const ClassCard({
    Key? key,
    required this.timelineList,
    required this.underWidget,
    required this.className,
  }) : super(key: key);

  final String className;
  final List timelineList;
  final Widget underWidget;

  @override
  Widget build(BuildContext context) {
    return BorderBox(
      radius: 12.sp,
      padding: EdgeInsets.all(16.0.sp),
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 100.w,
            height: 194.h,
          ),
          SpaceBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextCard(text: '1限'),
                    SpaceBox(width: 8.w),
                    TextCard(text: '1限'),
                    Spacer(),
                    ColoredBorderBox(
                      child: MainText(
                        text: '履修中',
                        textStyle: caption1Regular(colorScheme.background),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 4.sp, horizontal: 8.sp),
                      color: Color(0xffE7A15F),
                    )
                  ],
                ),
                SpaceBox(height: 12.h),
                MainText(
                  text: className,
                  textStyle: headLineBold(colorScheme.onBackground),
                ),
                SpaceBox(height: 7.h),
                Row(
                  children: [
                    IconAndText(
                      iconData: Icons.calendar_today,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '9コマ',
                      textStyle: bodyRegular(
                        colorScheme.onBackground.withOpacity(0.5),
                      ),
                      spaceSize: 6.5.w,
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    SpaceBox(width: 12.w),
                    IconAndText(
                      iconData: Icons.videocam_off_outlined,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: 'オフライン不可',
                      textStyle: bodyRegular(
                        colorScheme.onBackground.withOpacity(0.5),
                      ),
                      spaceSize: 10.w,
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    SpaceBox(height: 12.h),
                  ],
                ),
                SpaceBox(height: 12.h),
                ColoredBorderBox(
                  padding:
                      EdgeInsets.symmetric(vertical: 4.sp, horizontal: 16.sp),
                  color: colorScheme.surfaceVariant.withOpacity(0.5),
                  child: Row(
                    children: [
                      MainText(
                        text: '担当',
                        textStyle: caption1Regular(
                          colorScheme.onBackground.withOpacity(0.5),
                        ),
                      ),
                      SpaceBox(width: 12.w),
                      ImageAndUserInfo(
                        widget: MainText(
                          text: '高橋　夏輝',
                          textStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceBox(height: 20.h),
                Row(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
