import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/user/user_state.dart';
import 'package:vantan_connect/domain/user/user_state.dart';
import 'package:vantan_connect/domain/user/user_state.dart';
import 'package:vantan_connect/view/organism/button_when_press_color_changing.dart';
import 'package:vantan_connect/view/organism/canvas_color_app_bar_with_title_message.dart';
import 'package:vantan_connect/view/organism/class_card_with_image.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/space_box.dart';

class MyClassListTemplate extends StatelessWidget {
  const MyClassListTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CanvasColorAppBarWithTitleMessage(title: '選択した授業'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 22.0.h, horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ButtonWhenPressColorChanging(
                    onChanged: true,
                    borderRadius: BorderRadius.circular(8.sp),
                    text: '前期',
                    textStyle: bodyBold(colorScheme.onBackground),
                  ),
                  SpaceBox(width: 8.w),
                  ButtonWhenPressColorChanging(
                    onChanged: false,
                    borderRadius: BorderRadius.circular(8.sp),
                    text: '前期',
                    textStyle: bodyBold(colorScheme.onBackground),
                  ),
                  Spacer(),
                  Icon(Icons.menu),
                ],
              ),
              SpaceBox(height: 16.h),
              ClassCardWithImage(
                classInfo: Class(),
              ),
              SpaceBox(height: 16.h),
              ClassCardWithImage(
                classInfo: Class(),
              ),
              SpaceBox(height: 16.h),
              ClassCardWithImage(
                classInfo: Class(),
              ),
              SpaceBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
