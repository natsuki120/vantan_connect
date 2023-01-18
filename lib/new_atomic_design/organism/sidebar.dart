import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_icon.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/molecule/original_toggle_buttons.dart';
import 'package:vantan_connect/new_atomic_design/molecule/sidebar_items.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/column_border_line.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../../view/token/style_by_platform.dart';

// TODO originalIconがatoms層だからなんとかしてmolecule層にする

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double iconSize = 16.sp;
    final double departmentIconSize = 28.sp;
    final Color iconColor = midEmphasis;
    final double commonSpace = 23.0.sp;
    final double commonSpaceBetweenToggleText = 10.0.sp;
    final double commonSpaceBetweenAsset = 18.sp;
    final double commonSpaceBetweenDepartment = 23.0.sp;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: commonSpace),
          child: Column(
            children: [
              SpaceBox(height: 18.sp),
              OriginalIcon(
                iconData: Icons.menu_open,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: 36.sp),
              OriginalIcon(
                iconData: Icons.today_outlined,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              OriginalIcon(
                iconData: Icons.search_outlined,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              OriginalIcon(
                iconData: Icons.mic_none,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              OriginalIcon(
                iconData: Icons.chat_outlined,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              OriginalIcon(
                iconData: Icons.share_outlined,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              OriginalIcon(
                iconData: Icons.drafts_outlined,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              OriginalIcon(
                iconData: Icons.bookmark_border,
                iconSize: departmentIconSize,
                iconColor: iconColor,
              ),
              SpaceBox(height: commonSpace),
              RowBorderLine(),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
              SpaceBox(height: commonSpaceBetweenAsset),
              Image.asset('images/Course icon.png'),
            ],
          ),
        ),
        ColumnBorderLine(),
        Padding(
          padding: EdgeInsets.only(left: commonSpace, right: 137.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceBox(height: 16.sp),
              Row(
                children: [
                  SizedBox(
                    width: 48.sp,
                    height: 48.sp,
                    child: Image.asset('images/Course icon.png'),
                  ),
                  SpaceBox(width: 8.sp),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'テックフォードアカデミー',
                        style: caption1Bold(highEmphasis),
                      ),
                      OriginalToggleButton(
                        text: '東京校',
                        textStyle: title3Bold(black),
                        callback: () {},
                        iconData: Icons.unfold_more,
                        iconSize: iconSize,
                        iconColor: iconColor,
                        spaceSize: 4.sp,
                      )
                    ],
                  )
                ],
              ),
              SpaceBox(height: 44.sp),
              OriginalText(
                text: '作成・管理',
                textStyle: caption1Bold(lowEmphasis),
              ),
              SpaceBox(height: commonSpace),
              SidebarItems(
                text: '年度予定表',
                textStyle: bodyRegular(midEmphasis),
                iconData: Icons.calendar_month,
                iconSize: iconSize,
                iconColor: iconColor,
                backgroundColor: Colors.transparent,
              ),
              SpaceBox(height: 10.sp),
              SidebarItems(
                text: 'テキスト',
                textStyle: bodyRegular(midEmphasis),
                iconData: Icons.calendar_month,
                iconSize: iconSize,
                iconColor: iconColor,
                backgroundColor: Colors.transparent,
              ),
              SpaceBox(height: 10.sp),
              SidebarItems(
                text: 'テキスト',
                textStyle: bodyRegular(midEmphasis),
                iconData: Icons.calendar_month,
                iconSize: iconSize,
                iconColor: iconColor,
                backgroundColor: Colors.transparent,
              ),
              SpaceBox(height: 10.sp),
              SpaceBox(height: 44.sp),
              OriginalText(
                text: '学部・コース',
                textStyle: caption1Bold(lowEmphasis),
              ),
              SpaceBox(height: commonSpace),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SidebarItems(
                    text: '〇〇学部',
                    textStyle: bodyRegular(midEmphasis),
                    iconData: Icons.square,
                    iconSize: departmentIconSize,
                    iconColor: iconColor,
                    backgroundColor: Colors.transparent,
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                ],
              ),
              SpaceBox(height: commonSpaceBetweenDepartment),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SidebarItems(
                    text: '〇〇学部',
                    textStyle: bodyRegular(midEmphasis),
                    iconData: Icons.square,
                    iconSize: departmentIconSize,
                    iconColor: iconColor,
                    backgroundColor: Colors.transparent,
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                ],
              ),
              SpaceBox(height: commonSpaceBetweenDepartment),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SidebarItems(
                    text: '〇〇学部',
                    textStyle: bodyRegular(midEmphasis),
                    iconData: Icons.square,
                    iconSize: departmentIconSize,
                    iconColor: iconColor,
                    backgroundColor: Colors.transparent,
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                  SpaceBox(height: commonSpaceBetweenToggleText),
                  OriginalToggleIconText(
                    text: 'テキスト',
                    textStyle: bodyRegular(midEmphasis),
                    callback: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        ColumnBorderLine(),
      ],
    );
  }
}
