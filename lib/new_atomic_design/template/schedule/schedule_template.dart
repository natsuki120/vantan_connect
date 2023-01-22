import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/molecule/buttons.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class ScheduleTemplate extends StatelessWidget {
  const ScheduleTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceBox(height: 24.sp),
              OriginalText(text: '時間割を作成', textStyle: title1Bold(highEmphasis)),
              SpaceBox(height: 40.sp),
              OriginalText(text: 'ベースクラス', textStyle: bodyBold(highEmphasis)),
              SpaceBox(height: 24.sp),
              Container(
                width: 358.sp,
                height: 120.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  border: Border.all(color: midEmphasis.withOpacity(0.4)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 159.sp,
                        right: 159.sp,
                        top: 26.sp,
                      ),
                      child: FilledEnabledIconButton(
                        padding: EdgeInsets.all(12.sp),
                        iconData: Icons.add_outlined,
                        iconSize: 16.sp,
                        iconColor: Colors.white,
                        backgroundColor: primary,
                      ),
                    ),
                    SpaceBox(height: 12.sp),
                    OriginalText(
                      text: '選択する',
                      textStyle: bodyRegular(highEmphasis),
                    ),
                  ],
                ),
              ),
              SpaceBox(height: 40.sp),
              OriginalText(text: '選択科目', textStyle: headLineBold(highEmphasis)),
              SpaceBox(height: 20.sp),
              Container(
                width: 358.sp,
                height: 120.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: surfaceSecondary,
                ),
              ),
              SpaceBox(height: 8.sp),
              Container(
                width: 358.sp,
                height: 120.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: surfaceSecondary,
                ),
              ),
              SpaceBox(height: 8.sp),
              Container(
                width: 358.sp,
                height: 120.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: surfaceSecondary,
                ),
              ),
              SpaceBox(height: 8.sp),
            ],
          ),
        ),
      ),
    );
  }
}
