import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/main_text.dart';

import '../molecule/Icon_and_text.dart';
import '../molecule/class_tag.dart';
import '../molecule/icon_text_and_detail.dart';

import '../token/color_schemes.g.dart';
import '../token/style_by_platform.dart';

class OpenDairyClass extends StatelessWidget {
  const OpenDairyClass({
    Key? key,
    required this.className,
    required this.classLong,
    required this.teacherName,
    required this.schoolPlace,
    required this.classRoom,
  }) : super(key: key);

  final String className;
  final String classLong;
  final String teacherName;
  final String schoolPlace;
  final String classRoom;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: 276,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: colorScheme.onBackground.withOpacity(0.5),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.h),
              ClassTag(),
              SizedBox(height: 8.h),
              MainText(
                text: className,
                textStyle: headLineBold(colorScheme.onBackground),
              ),
              SizedBox(height: 22.h),
              IconAndText(
                iconData: Icons.schedule,
                text: classLong,
                textStyle: headLineRegular(colorScheme.onBackground),
                spaceSize: 18.sp,
                color: colorScheme.onBackground.withOpacity(0.5),
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              SizedBox(height: 24.h),
              IconAndText(
                iconData: Icons.person,
                text: teacherName,
                textStyle: headLineRegular(colorScheme.onBackground),
                spaceSize: 18.sp,
                color: colorScheme.onBackground.withOpacity(0.5),
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              SizedBox(height: 24.h),
              IconTextAndDetail(
                iconData: Icons.location_on,
                text: schoolPlace,
                spaceSize: 20.sp,
                detailText: classRoom,
              ),
              SizedBox(height: 16.h),
            ],
          ))
    ]);
  }
}
