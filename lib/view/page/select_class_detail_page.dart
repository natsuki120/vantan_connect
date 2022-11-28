import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/horizontal_class_info_element.dart';
import 'package:vantan_connect/view/molecule/title_and_content.dart';
import '../atom/color_schemes.g.dart';
import '../atom/description_text.dart';
import '../atom/main_text.dart';
import '../molecule/border_box.dart';
import '../molecule/image_and_user_info.dart';

class SelectClassDetailPage extends StatelessWidget {
  const SelectClassDetailPage({
    Key? key,
    required this.classInfo,
  }) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.onBackground,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainText(
                    text: classInfo.name,
                    textStyle: title1Bold(colorScheme.onBackground),
                  ),
                  SpaceBox(height: 24.h),
                  HorizontalClassInfoElement(
                    text: '講師',
                    iconData: Icons.person,
                    info: ImageAndUserInfo(
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MainText(
                            text: classInfo.teacher[0]['name'],
                            textStyle: headLineBold(colorScheme.onBackground),
                          ),
                          SpaceBox(height: 4.h),
                          DescriptionText(
                            text: classInfo.teacher[0]['job'],
                            textStyle: bodyRegular(
                              colorScheme.onBackground.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SpaceBox(height: 34.h),
                  HorizontalClassInfoElement(
                    text: '単位時間',
                    iconData: Icons.calendar_today_outlined,
                    info: MainText(
                      text: '${classInfo.frameCount}コマ',
                      textStyle: headLineBold(colorScheme.onBackground),
                    ),
                  ),
                  SpaceBox(height: 34.h),
                  HorizontalClassInfoElement(
                    text: '単位認定条件',
                    iconData: Icons.calendar_today_outlined,
                    info: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: classInfo.goalRequirements.length,
                      itemBuilder: (context, i) {
                        return MainText(
                          text: classInfo.goalRequirements[i],
                          textStyle: headLineBold(colorScheme.onBackground),
                        );
                      },
                    ),
                  ),
                  SpaceBox(height: 40.h),
                  DefaultTabController(
                    length: 2,
                    child: TabBar(
                      unselectedLabelColor: colorScheme.onBackground,
                      labelColor: colorScheme.primary,
                      tabs: [
                        Text('詳細'),
                        Text('スケジュール'),
                      ],
                    ),
                  ),
                  SpaceBox(height: 40.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.sp),
              child: Column(
                children: [
                  TitleAndContent(
                    title: '概要',
                    content: MainText(
                      text: classInfo.overView,
                      textStyle: bodyRegular(colorScheme.onBackground),
                    ),
                  ),
                  SpaceBox(height: 40.h),
                  TitleAndContent(
                    title: 'ゴール',
                    content: MainText(
                      text: classInfo.goalPoint,
                      textStyle: bodyRegular(colorScheme.onBackground),
                    ),
                  ),
                  SpaceBox(height: 40.h),
                  TitleAndContent(
                    title: '担当',
                    content: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: classInfo.teacher.length,
                        itemBuilder: (context, index) {
                          final teacher = classInfo.teacher[index];
                          return Column(
                            children: [
                              BorderBox(
                                radius: 12,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.sp,
                                  vertical: 20.sp,
                                ),
                                child: ImageAndUserInfo(
                                  widget: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MainText(
                                        text: teacher['name'],
                                        textStyle: headLineBold(
                                            colorScheme.onBackground),
                                      ),
                                      SpaceBox(height: 4.h),
                                      DescriptionText(
                                        text: teacher['job'],
                                        textStyle: bodyRegular(
                                          colorScheme.onBackground
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SpaceBox(height: 8.h),
                            ],
                          );
                        }),
                  ),
                  SpaceBox(height: 40.h),
                  TitleAndContent(
                    title: '授業で扱う内容',
                    content: MainText(
                      text:
                          '・統計学\n・機械学習\n・データビジュアライゼーション\n・データマーケティング\n・AI・プログラミング',
                      textStyle: bodyRegular(colorScheme.onBackground),
                    ),
                  ),
                  SpaceBox(height: 318.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
