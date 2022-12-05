import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/organism/canvas_color_app_bar_with_title_message.dart';
import 'package:vantan_connect/view/template/attendance_book_template.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/const_width_and_height.dart';
import 'package:vantan_connect/view/token/custom_tab_bar_which_has_black_text_color.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/space_box.dart';

class ClassDocumentViewTemplate extends StatelessWidget {
  const ClassDocumentViewTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CanvasColorAppBarWithTitleMessage(title: 'UI/UXデザイン'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceBox(height: 38),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleMessage(
                  text: 'UI/UXとは？',
                  textStyle: title1Bold(colorScheme.onBackground),
                ),
                SpaceBox(height: 11.h),
                IconAndText(
                  iconData: Icons.calendar_today_outlined,
                  text: '5月10日（火曜）',
                  textStyle: caption1Regular(
                    colorScheme.onBackground.withOpacity(0.7),
                  ),
                  spaceSize: 6.w,
                  color: colorScheme.onBackground.withOpacity(0.7),
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                SpaceBox(height: 15.h),
                IconAndText(
                  iconData: Icons.calendar_today_outlined,
                  text: '5月10日（火曜）',
                  textStyle: caption1Regular(
                    colorScheme.onBackground.withOpacity(0.7),
                  ),
                  spaceSize: 6.w,
                  color: colorScheme.onBackground.withOpacity(0.7),
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ],
            ),
          ),
          SpaceBox(height: 26.h),
          CustomTabBar(
            isScrollable: false,
            labelColor: colorScheme.onBackground,
            unselectedLabelColor: colorScheme.onBackground.withOpacity(0.5),
            tabs: [
              Tab(text: '出席簿'),
              Tab(text: 'コメント'),
            ],
            tabBarChildren: [
              AttendanceBookTemplate(),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
