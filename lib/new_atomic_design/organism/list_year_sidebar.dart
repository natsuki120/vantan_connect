import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_icon.dart';
import 'package:vantan_connect/new_atomic_design/molecule/original_toggle_buttons.dart';
import 'package:vantan_connect/new_atomic_design/molecule/sidebar_items.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/column_border_line.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../../view/token/style_by_platform.dart';

class ListYearSidebar extends StatelessWidget {
  const ListYearSidebar({Key? key, required this.callback}) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    final double iconSize = 16.sp;
    final double departmentIconSize = 28.sp;
    final Color iconColor = midEmphasis;
    final double commonSpace = 23.0.sp;
    final double commonSpaceBetweenAsset = 18.sp;

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
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: commonSpace),
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
                      ),
                      SpaceBox(width: 32.sp),
                      Placeholder(
                        fallbackWidth: 24.sp,
                        fallbackHeight: 14.sp,
                      ),
                    ],
                  ),
                  SpaceBox(height: 44.sp),
                  GestureDetector(
                    onTap: () => NavigatorPop(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SidebarItems(
                          text: 'テキスト',
                          textStyle: bodyRegular(midEmphasis),
                          iconData: Icons.navigate_before,
                          iconSize: 25.sp,
                          iconColor: midEmphasis,
                          backgroundColor: Colors.transparent,
                        ),
                        SpaceBox(width: 12.sp),
                        Container(
                          width: 220.sp,
                          height: 1.sp,
                          color: midEmphasis.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  SpaceBox(height: 20.sp),
                  Row(
                    children: [
                      Text('年度別一覧', style: caption1Bold(lowEmphasis)),
                      SpaceBox(width: 150.sp),
                      GestureDetector(
                        child: Icon(Icons.add, size: 20.sp),
                        onTap: callback,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SpaceBox(height: 11.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyBold(highEmphasis),
              backgroundColor: midEmphasis.withOpacity(0.08),
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyRegular(midEmphasis),
              backgroundColor: Colors.transparent,
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyRegular(midEmphasis),
              backgroundColor: Colors.transparent,
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyRegular(midEmphasis),
              backgroundColor: Colors.transparent,
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyRegular(midEmphasis),
              backgroundColor: Colors.transparent,
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyRegular(midEmphasis),
              backgroundColor: Colors.transparent,
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
            SidebarItemsText(
              backgroundWidth: 265.sp,
              backgroundHeight: 28.sp,
              text: '2023年度',
              textStyle: bodyRegular(midEmphasis),
              backgroundColor: Colors.transparent,
              spaceSize: 16.sp,
            ),
            SpaceBox(height: 6.sp),
          ],
        ),
        ColumnBorderLine(),
      ],
    );
  }
}
