import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/view/molecule/image_and_user_info.dart';
import 'package:vantan_connect/view/organism/user_card.dart';
import 'package:vantan_connect/view/token/custom_tab_bar_which_has_black_text_color.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import 'package:vantan_connect/view/organism/horizontal_class_info_element.dart';
import 'package:vantan_connect/view/organism/title_and_content.dart';
import '../molecule/guidance_message.dart';
import '../token/color_schemes.g.dart';
import 'package:vantan_connect/view/organism/detail_text_in_organism.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';

import '../token/const_width_and_height.dart';

class SelectClassDetailPage extends StatelessWidget {
  const SelectClassDetailPage({
    Key? key,
    required this.classInfo,
  }) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context) {
    return TitleAndSelectClassScreen(
      title: classInfo.name,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
              child: HorizontalClassInfoElement(
                text: '講師',
                iconData: Icons.person,
                info: ImageAndUserInfo(
                  url: classInfo.teacher[0]['userImagePath'],
                  widget: GuidanceMessage(
                    mainText: classInfo.teacher[0]['name'],
                    subText: classInfo.teacher[0]['job'],
                    mainTextStyle: headLineBold(colorScheme.onBackground),
                    subTextStyle: bodyRegular(
                      colorScheme.onBackground.withOpacity(0.7),
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spaceSize: 4.h,
                  ),
                ),
              ),
            ),
            SpaceBox(height: 34.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
              child: HorizontalClassInfoElement(
                text: '単位時間',
                iconData: Icons.calendar_today_outlined,
                info: DetailTextInOrganism(
                  text: '${classInfo.frameCount}コマ',
                  textStyle: headLineBold(colorScheme.onBackground),
                ),
              ),
            ),
            SpaceBox(height: 34.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
              child: HorizontalClassInfoElement(
                text: '単位認定条件',
                iconData: Icons.calendar_today_outlined,
                info: ListView.builder(
                    shrinkWrap: true,
                    itemCount: classInfo.goalRequirements.length,
                    itemBuilder: (context, index) {
                      final goalRequirements =
                          classInfo.goalRequirements[index];
                      return DetailTextInOrganism(
                        text: '$goalRequirements\n',
                        textStyle: headLineBold(colorScheme.onBackground),
                      );
                    }),
              ),
            ),
            SpaceBox(height: 40.h),
            Container(
              height: 1500,
              child: CustomTabBar(
                labelColor: colorScheme.primary,
                unselectedLabelColor: colorScheme.onBackground,
                isScrollable: false,
                tabs: [Tab(text: '詳細'), Tab(text: 'スケジュール')],
                tabBarChildren: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.sp,
                      vertical: 40.sp,
                    ),
                    child: Column(
                      children: [
                        TitleAndContent(
                          title: '概要',
                          content: DetailTextInOrganism(
                            text: classInfo.overView,
                            textStyle: bodyRegular(colorScheme.onBackground),
                          ),
                        ),
                        SpaceBox(height: 40.h),
                        TitleAndContent(
                          title: 'ゴール',
                          content: DetailTextInOrganism(
                            text: classInfo.goalPoint,
                            textStyle: bodyRegular(colorScheme.onBackground),
                          ),
                        ),
                        SpaceBox(height: 40.h),
                        TitleAndContent(
                          title: '担当',
                          content: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: classInfo.teacher.length,
                            itemBuilder: (context, index) {
                              final teacher = classInfo.teacher[index];
                              return Column(
                                children: [
                                  SpaceBox(height: 8.h),
                                  UserCard(
                                    teacherImg: teacher['userImagePath'],
                                    mainText: teacher['name'],
                                    subText: teacher['job'],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spaceSize: 4.h,
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                        SpaceBox(height: 40.h),
                        TitleAndContent(
                          title: '授業で扱う内容',
                          content: DetailTextInOrganism(
                            text:
                                '・統計学\n・機械学習\n・データビジュアライゼーション\n・データマーケティング\n・AI・プログラミング',
                            textStyle: bodyRegular(colorScheme.onBackground),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container()
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
