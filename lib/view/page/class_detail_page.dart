import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/circle_icon_button.dart';
import 'package:vantan_connect/view/organism/class_img_with_white_band.dart';
import 'package:vantan_connect/view/organism/custom_tab_bar.dart';
import 'package:vantan_connect/view/page/all_classmate_profie_page.dart';
import 'package:vantan_connect/view/page/done_class_history_page.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import '../../domain/class/class.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../organism/class_detail_header.dart';

class ClassDetailPage extends StatelessWidget {
  const ClassDetailPage({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

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
                      classImgUrl: classInfo.classImgUrl,
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
                        ClassDetailHeader(classInfo: classInfo),
                        CustomTabBar(
                          tabChildren: [
                            Tab(text: '投稿'),
                            Tab(text: 'スケジュール'),
                            Tab(text: '受講者'),
                            Tab(text: '質問箱'),
                            Tab(text: '過去の授業'),
                          ],
                          tabBarChildren: [
                            Container(),
                            Container(),
                            AllClassmateProfilePage(
                              classmateList: classInfo.student,
                            ),
                            Container(),
                            DoneClassHistoryPage(
                              documentList: classInfo.document,
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
