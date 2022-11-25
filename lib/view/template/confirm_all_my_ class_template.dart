import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import '../atom/colored_border_box.dart';
import '../atom/space_box.dart';
import '../molecule/Icon_and_text.dart';
import '../molecule/border_box.dart';
import '../organism/class_card.dart';

class ConfirmAllMyClassTemplate extends StatelessWidget {
  const ConfirmAllMyClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: colorScheme.background,
          title: MainText(
            text: '授業一覧',
            textStyle: headerMedium(colorScheme.onSurface),
          ),
          // TODO 余白の付け方を考える
          bottom: TabBar(
            indicatorColor: colorScheme.primary,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MainText(
                  text: '選択した授業',
                  textStyle: bodyBold(colorScheme.onBackground),
                ),
              ),
              MainText(
                text: '全ての授業',
                textStyle: bodyBold(colorScheme.onBackground),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 22.0.h, horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    ColoredBorderBox(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.sp,
                        vertical: 10.sp,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.check),
                          SpaceBox(width: 10.w),
                          MainText(
                            text: '前期',
                            textStyle: bodyBold(colorScheme.onBackground),
                          ),
                        ],
                      ),
                      color: colorScheme.primaryContainer.withOpacity(0.35),
                    ),
                    SpaceBox(width: 8.w),
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
                    Spacer(),
                    Icon(Icons.menu),
                  ],
                ),
                ClassCard(
                  timelineList: [],
                  underWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
                ClassCard(
                  timelineList: [],
                  underWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
                ClassCard(
                  timelineList: [],
                  underWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
                ClassCard(
                  timelineList: [],
                  underWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                      IconAndText(
                        iconData: Icons.access_time,
                        color: colorScheme.onBackground.withOpacity(0.5),
                        text: '50分 ×2',
                        textStyle: bodyRegular(colorScheme.onBackground),
                        spaceSize: 10.sp,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
