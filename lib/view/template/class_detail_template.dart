import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/view/organism/circle_icon_button.dart';
import 'package:vantan_connect/view/organism/class_img_with_white_band.dart';
import 'package:vantan_connect/view/organism/custom_tab_bar.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'all_classmate_profile_template.dart';
import 'done_class_history_template.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../organism/class_detail_header.dart';

class ClassDetailTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 1.0,
          backgroundColor: Colors.transparent.withOpacity(0.25),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 1400,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClassImgWithWhiteBand(
                      width: double.infinity,
                      height: 240.h,
                      classImgUrl:
                          'https://www.agaroot.jp/datascience/column/wp-content/uploads/2020/12/tech-5090539_1920-min.jpg',
                      borderRadius: BorderRadius.zero,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 64.0.h,
                        horizontal: 16.w,
                      ),
                      child: Row(
                        children: [
                          CircleIconButton(
                            backgroundColor: colorScheme.primaryContainer,
                            iconData: Icons.chevron_left,
                            iconSize: 20.sp,
                            callback: () => NavigatorPop(context),
                          ),
                          Spacer(),
                          CircleIconButton(
                            backgroundColor: colorScheme.primaryContainer,
                            iconData: Icons.today,
                            iconSize: 20.sp,
                            callback: () {},
                          ),
                          SpaceBox(width: 12.w),
                          CircleIconButton(
                            backgroundColor: colorScheme.primaryContainer,
                            iconData: Icons.more_vert,
                            iconSize: 20.sp,
                            callback: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 22.0.h,
                      horizontal: 16.w,
                    ),
                    child: Column(
                      children: [
                        ClassDetailHeader(
                          classInfo: Class(
                            name: 'UI/UXデザイン実践',
                            overView:
                                'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
                          ),
                        ),
                        CustomTabBar(
                          tabChildren: [
                            Tab(text: '投稿'),
                            Tab(text: 'スケジュール'),
                            Tab(text: '受講者'),
                            Tab(text: '質問箱'),
                            Tab(text: '過去の授業'),
                          ],
                          tabBarChildren: [
                            Container(color: Colors.pink),
                            Container(color: Colors.purple),
                            AllClassmateProfileTemplate(
                              classmateName: 'name',
                              classmateId: '@name',
                              classmateInfo:
                                  '【太陽光発電所の保安・管理業務】※成長し続けるリテールビジネス分野総合商社の関連会社／スタートアップ',
                            ),
                            Container(color: Colors.green),
                            DoneClassHistoryTemplate(
                              title: 'UI/UXとは?',
                              description: '山路やまみちを登りながら、こう考えた。智ちに働けば角かどが立つ...',
                            ),
                          ],
                          tabLength: 5,
                          title: Container(),
                        ),
                      ],
                    ),
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
