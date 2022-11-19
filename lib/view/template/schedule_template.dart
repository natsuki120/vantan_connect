import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/organism/class_card.dart';
import 'package:vantan_connect/view/organism/enable_class_card.dart';
import 'package:vantan_connect/view/molecule/horizontal_weekday.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/organism/attendance_confirmation_modal.dart';
import '../molecule/Icon_and_text.dart';

class ScheduleTemplate extends StatelessWidget {
  const ScheduleTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1,
        title: MainText(
          text: '11月',
          textStyle: header(colorScheme.onBackground),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Column(
            children: [
              HorizontalWeekday(),
              SpaceBox(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Column(
            children: [
              EnableClassCard(),
              SpaceBox(height: 16.h),
              ClassCard(
                timelineList: [],
                underWidget: Row(
                  children: [
                    Spacer(flex: 4),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10.w,
                    ),
                    Spacer(),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10.sp,
                    ),
                    Spacer(),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10.sp,
                    ),
                  ],
                ),
              ),
              SpaceBox(height: 16.h),
              ClassCard(
                timelineList: [],
                underWidget: Row(
                  children: [
                    Spacer(flex: 4),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10.w,
                    ),
                    Spacer(),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10.w,
                    ),
                    Spacer(),
                    IconAndText(
                      iconData: Icons.access_time,
                      color: colorScheme.onBackground.withOpacity(0.5),
                      text: '50分 ×2',
                      textStyle: bodyRegular(colorScheme.onBackground),
                      spaceSize: 10.w,
                    ),
                  ],
                ),
              ),
              SpaceBox(height: 16.h),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => attendanceConfirmationModal(context),
      ),
    );
  }
}
