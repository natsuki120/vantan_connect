import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atom/color_schemes.g.dart';
import '../atom/round_icon_button.dart';
import '../atom/style_by_platform.dart';
import '../atom/space_box.dart';
import '../molecule/classmate_profile.dart';
import '../molecule/other_class.dart';
import '../organism/class_detail_card.dart';

class ClassDetailTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0.0,
        backgroundColor: Colors.transparent.withOpacity(0.25),
      ),
      body: DefaultTabController(
        length: 5,
        child: SingleChildScrollView(
          child: Container(
            //TODO これを変える
            height: 1000,
            child: Column(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0.3),
                      ],
                      stops: [
                        0.8,
                        1,
                      ],
                    ).createShader(bounds);
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 240.h,
                        width: double.infinity,
                        color: Colors.blue,
                        //ここに画像
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 64.0.h, horizontal: 16.w),
                        child: Row(
                          children: [
                            RoundIconButton(
                              backgroundColor: colorScheme.primaryContainer,
                              onPressed: () {},
                              iconData: Icons.chevron_left,
                            ),
                            Spacer(),
                            RoundIconButton(
                              backgroundColor: colorScheme.primaryContainer,
                              onPressed: () {},
                              iconData: Icons.today,
                            ),
                            SpaceBox(
                              width: 12.w,
                            ),
                            RoundIconButton(
                              backgroundColor: colorScheme.primaryContainer,
                              onPressed: () {},
                              iconData: Icons.more_vert,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    //これatomにしたい
                    padding: EdgeInsets.symmetric(
                        vertical: 22.0.h, horizontal: 16.w),

                    child: Column(
                      children: [
                        ClassDetailCard(),
                        TabBar(
                          isScrollable: true,
                          labelColor: colorScheme.primary,
                          labelStyle: headLineBold(colorScheme.primary),
                          unselectedLabelColor:
                              colorScheme.onBackground.withOpacity(0.5),
                          unselectedLabelStyle: labelLarge(
                            FontWeight.w500,
                            colorScheme.onBackground.withOpacity(0.5),
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: colorScheme.primary,
                          tabs: [
                            Tab(text: '投稿'),
                            Tab(text: 'スケジュール'),
                            Tab(text: '受講者'),
                            Tab(text: '質問箱'),
                            Tab(text: '過去の授業'),
                          ],
                        ),
                        SpaceBox(
                          height: 16.h,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Container(color: Colors.pink),
                              Container(color: Colors.purple),
                              ClassmateProfile(),
                              Container(color: Colors.green),
                              DoneClassHistory(),
                            ],
                          ),
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
