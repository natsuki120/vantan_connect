import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/use_case/state/student_state.dart';
import 'package:vantan_connect/view/organism/circle_icon_button.dart';
import 'package:vantan_connect/view/organism/class_img_with_white_band.dart';
import 'package:vantan_connect/view/organism/custom_tab_bar_which_has_primary_text_color.dart';
import 'package:vantan_connect/view/page/done_class_history_page.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import '../../domain/class/class.dart';
import '../../domain/student/student.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../organism/class_detail_header.dart';
import 'all_classmate_profie_page.dart';

class ClassDetailPage extends HookConsumerWidget {
  const ClassDetailPage({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(studentState);
    useEffectOnce(() {
      ref
          .watch(studentState.notifier)
          .fetchStudentListById(classInfo.studentIdList);
      return;
    });
    final List<Student> studentList = ref.watch(studentState.notifier).state;
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
                        ClassDetailHeader(classInfo: classInfo),
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
                            AllClassmateProfilePage(classmateList: studentList),
                            Container(),
                            Container(),
                            DoneClassHistoryPage(classInfo: classInfo),
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
