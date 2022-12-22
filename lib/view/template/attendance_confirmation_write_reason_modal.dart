import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/description_text.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/atom/border_box.dart';
import 'package:vantan_connect/view/atom/colored_border_box.dart';
import 'package:vantan_connect/view/molecule/guidance_message.dart';
import 'package:vantan_connect/view/atom/primary_color_button.dart';
import 'package:vantan_connect/view/atom/tappable_text.dart';

Future attendanceConfirmationWriteReason(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 797.h,
        decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20.sp),
            right: Radius.circular(20.sp),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 28.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TappableText(
                    text: 'キャンセル',
                    textStyle: bodyRegular(colorScheme.onBackground),
                    voidCallback: () => Navigator.of(context).pop(),
                  ),
                  Spacer(),
                  MainText(
                    text: '理由を書く',
                    textStyle: headerMedium(colorScheme.onBackground),
                  ),
                  Spacer(flex: 2),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SpaceBox(height: 54.h),
                      MainText(
                        text: '出欠状況を選択',
                        textStyle: headLineBold(colorScheme.onBackground),
                      ),
                      SpaceBox(height: 20.h),
                      Row(
                        children: [
                          ColoredBorderBox(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.sp,
                              vertical: 10.sp,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.check),
                                SpaceBox(width: 10.w),
                                MainText(
                                  text: '遅刻',
                                  textStyle: bodyBold(colorScheme.onBackground),
                                ),
                              ],
                            ),
                            color:
                                colorScheme.primaryContainer.withOpacity(0.35),
                          ),
                          SpaceBox(width: 6),
                          BorderBox(
                            radius: 12.sp,
                            child: MainText(
                              text: '欠席',
                              textStyle: bodyBold(colorScheme.onBackground),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.sp,
                              vertical: 10.sp,
                            ),
                          ),
                          SpaceBox(width: 6.w),
                          BorderBox(
                            radius: 12.sp,
                            child: MainText(
                              text: '早退',
                              textStyle: bodyBold(colorScheme.onBackground),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.sp,
                              vertical: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: colorScheme.onBackground.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      SpaceBox(height: 20.h),
                      GuidanceMessage(
                        mainText: '対象の授業を選択',
                        subText: '理由を書く対象とする授業を選択してください',
                        mainTextStyle: headLineBold(colorScheme.onBackground),
                        subTextStyle: bodyRegular(colorScheme.onBackground),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spaceSize: 8.h,
                      ),
                      SpaceBox(height: 20.h),
                      BorderBox(
                        radius: 12.sp,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11.sp,
                          color: colorScheme.onBackground,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      SpaceBox(height: 10.h),
                      BorderBox(
                        radius: 12.sp,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11.sp,
                          color: colorScheme.onBackground,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      SpaceBox(height: 10.h),
                      BorderBox(
                        radius: 12.sp,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11.sp,
                          color: colorScheme.onBackground,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      SpaceBox(height: 10.h),
                      BorderBox(
                        radius: 12.sp,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11.sp,
                          color: colorScheme.onBackground,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      SpaceBox(height: 10.h),
                      BorderBox(
                        radius: 12.sp,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11.sp,
                          color: colorScheme.onBackground,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      SpaceBox(height: 10.h),
                      BorderBox(
                        radius: 12.sp,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 10.sp),
                        child: IconAndText(
                          iconData: Icons.add,
                          text: '1限 - UI/UX',
                          textStyle: bodyRegular(colorScheme.onBackground),
                          spaceSize: 11.sp,
                          color: colorScheme.onBackground,
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                      ),
                      SpaceBox(height: 10.h),
                      Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: colorScheme.onBackground.withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      SpaceBox(height: 20.h),
                      MainText(
                        text: '理由を記述',
                        textStyle: headLineBold(colorScheme.onBackground),
                      ),
                      SpaceBox(height: 20.h),
                      BorderBox(
                        radius: 12.sp,
                        child: DescriptionText(
                          text:
                              '先生の生活に近づきつつありながら、頁さえ切ってないのも多少あったのと同じ事です。何ともなかったとみえて、ついに一言も口を開く事ができた。奥さんは最初世の中を見る先生の眼が忽ち開いたのです。',
                          textStyle: bodyRegular(colorScheme.onBackground),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      SpaceBox(height: 30.h),
                      PrimaryColorButton(
                        callback: () => Navigator.popUntil(
                          context,
                          (route) => route.isFirst,
                        ),
                        width: double.infinity,
                        height: 40.h,
                        child: MainText(
                          text: '確認',
                          textStyle: bodyBold(colorScheme.background),
                        ),
                      ),
                      SpaceBox(height: 30.h),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
