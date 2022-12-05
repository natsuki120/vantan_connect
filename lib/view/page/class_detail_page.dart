import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/view/organism/circle_icon_button.dart';
import 'package:vantan_connect/view/organism/class_img_with_white_band.dart';
import 'package:vantan_connect/view/organism/custom_tab_bar_which_has_primary_text_color.dart';
import 'package:vantan_connect/view/page/all_classmate_profie_page.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../organism/class_detail_header.dart';
import 'done_class_history_page.dart';

class ClassDetailPage extends StatelessWidget {
  const ClassDetailPage({Key? key, required this.classDto}) : super(key: key);

  final ClassDto classDto;

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
                      classImgUrl: classDto.classInfo!.classImgUrl,
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
                            iconColor: colorScheme.onBackground,
                            backgroundColor: colorScheme.primaryContainer,
                            iconData: Icons.chevron_left,
                            iconSize: 20.sp,
                            callback: () => NavigatorPop(context),
                          ),
                          Spacer(),
                          CircleIconButton(
                            iconColor: colorScheme.onBackground,
                            backgroundColor: colorScheme.primaryContainer,
                            iconData: Icons.today,
                            iconSize: 20.sp,
                            callback: () {},
                          ),
                          SpaceBox(width: 12.w),
                          CircleIconButton(
                            iconColor: colorScheme.onBackground,
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
                        ClassDetailHeader(classDto: classDto),
                        CustomTabBarWhichHasPrimaryTextColor(
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
                                classmateList: classDto.classInfo!.student),
                            Container(),
                            DoneClassHistoryPage(
                              documentList: classDto.document!,
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
