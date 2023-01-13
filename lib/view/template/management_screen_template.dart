import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/domain/department/department.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
import 'package:vantan_connect/domain/value/IconAndText.dart';
import 'package:vantan_connect/view/organism/title_above_color_circle_with_text.dart';
import 'package:vantan_connect/view/organism/title_and_multiple_icon_with_text.dart';
import 'package:vantan_connect/view/token/column_border_line.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/selectable_icon.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class ManagementScreenTemplate extends StatelessWidget {
  const ManagementScreenTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconAndTextValue> IconAndTextList = [
      IconAndTextValue(icon: Icons.calendar_month, text: '年度予定表'),
      IconAndTextValue(icon: Icons.menu_book, text: '授業'),
      IconAndTextValue(icon: Icons.view_agenda, text: '時間割'),
    ];
    List<Department> departmentList = [
      Department(
        departmentName: DepartmentName(value: 'ゲーム学部'),
        majorList: [
          Major(value: 'ゲームプログラム学部'),
          Major(value: 'VR・MRクリエイター総合'),
          Major(value: 'ゲームプログラマー専攻'),
          Major(value: 'ゲームプランナー専攻'),
        ],
      ),
      Department(
        departmentName: DepartmentName(value: 'eスポーツ学部'),
        majorList: [
          Major(value: 'ゲームプログラム学部'),
          Major(value: 'VR・MRクリエイター総合'),
          Major(value: 'ゲームプログラマー専攻'),
          Major(value: 'ゲームプランナー専攻'),
        ],
      ),
      Department(departmentName: DepartmentName(value: 'アニメ学部'), majorList: [
        Major(value: 'ゲームプログラム学部'),
        Major(value: 'VR・MRクリエイター総合'),
        Major(value: 'ゲームプログラマー専攻'),
        Major(value: 'ゲームプランナー専攻'),
      ]),
      Department(departmentName: DepartmentName(value: 'ノベル学部'), majorList: [
        Major(value: 'ゲームプログラム学部'),
        Major(value: 'VR・MRクリエイター総合'),
        Major(value: 'ゲームプログラマー専攻'),
        Major(value: 'ゲームプランナー専攻'),
      ]),
    ];
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(
              children: [
                SpaceBox(height: 58.h),
                SelectableIcon(
                  iconData: Icons.today_outlined,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 20.h),
                SelectableIcon(
                  iconData: Icons.search,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 20.h),
                SelectableIcon(
                  iconData: Icons.mic_none,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 20.h),
                SelectableIcon(
                  iconData: Icons.chat_outlined,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 20.h),
                SelectableIcon(
                  iconData: Icons.share_outlined,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 20.h),
                SelectableIcon(
                  iconData: Icons.drafts_outlined,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 20.h),
                SelectableIcon(
                  iconData: Icons.bookmark_border,
                  iconSize: 30.sp,
                  iconColor: colorScheme.onBackground.withOpacity(0.7),
                ),
                SpaceBox(height: 23.h),
                RowBorderLine(),
                SpaceBox(height: 20),
                Image.asset('images/Course icon.png'),
                SpaceBox(height: 20.h),
                Image.asset('images/Course icon.png'),
                SpaceBox(height: 20.h),
                Image.asset('images/Course icon.png'),
                SpaceBox(height: 20.h),
                Image.asset('images/Course icon.png'),
                SpaceBox(height: 20.h),
                Image.asset('images/Course icon.png'),
                SpaceBox(height: 20.h),
                Image.asset('images/Course icon.png'),
              ],
            ),
          ),
          ColumnBorderLine(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpaceBox(height: 12),
                Row(
                  children: [
                    Container(
                      width: 48.sp,
                      height: 48.sp,
                      child: Image.asset(
                        'images/Course icon.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      children: [Text('テックフォードアカデミー')],
                    ),
                  ],
                ),
                TitleAndMultipleIconWithText(
                  title: '作成・管理',
                  iconAndTextList: IconAndTextList,
                ),
                SpaceBox(height: 44.sp),
                TitleAboveColorCircleWithText(
                  title: '学部・コース',
                  circleWidth: 10.sp,
                  circleHeight: 10.sp,
                  color: Color(0xffE7A15F),
                  textStyle:
                      bodyRegular(colorScheme.onBackground.withOpacity(0.5)),
                  departmentList: departmentList,
                ),
                SpaceBox(height: 26.sp),
              ],
            ),
          ),
          ColumnBorderLine(),
        ],
      ),
    );
  }
}
