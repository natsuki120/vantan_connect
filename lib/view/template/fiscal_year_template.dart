import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/icon_and_text_above_border_line.dart';
import 'package:vantan_connect/view/organism/text_with_icon_button_above_content.dart';
import 'package:vantan_connect/view/template/content_side_bar.dart';
import 'package:vantan_connect/view/token/icon_side_bar.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/selectable_text.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/column_border_line.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class FiscalYearTemplate extends StatelessWidget {
  const FiscalYearTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          IconSideBar(),
          ColumnBorderLine(),
          ContentSideBar(
            schoolName: 'テックフォードアカデミー',
            whereSchool: '東京校',
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconAndTextAboveBorderLine(
                      iconData: Icons.arrow_back,
                      text: '年度予定表',
                      textStyle: bodyBold(colorScheme.onBackground),
                      spaceSize: 12.sp,
                      color: colorScheme.onBackground.withOpacity(0.2),
                      mainAxisAlignmentBetweenBorderLine:
                          MainAxisAlignment.start,
                      borderWidth: 310.sp,
                      borderHeight: 1.sp,
                      borderColor: colorScheme.onBackground.withOpacity(0.2),
                      spaceHeight: 12.sp,
                      bottomBorderCrossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
                SpaceBox(height: 20.sp),
                TextWithIconButtonAboveContent(
                  text: '年度別一覧',
                  textStyle: caption1Bold(colorScheme.onBackground),
                  spaceSizeBetweenTextAndIcon: 145.sp,
                  iconWidget: Icon(
                    Icons.add,
                    size: 20.sp,
                    color: colorScheme.onBackground,
                  ),
                  callback: () {},
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  spaceSizeAboveContent: 0,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.1),
                        isSelected: true,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 208.sp,
                        ),
                      ),
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.05),
                        isSelected: false,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 163.sp,
                        ),
                      ),
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.05),
                        isSelected: false,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 163.sp,
                        ),
                      ),
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.05),
                        isSelected: false,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 163.sp,
                        ),
                      ),
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.05),
                        isSelected: false,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 163.sp,
                        ),
                      ),
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.05),
                        isSelected: false,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 163.sp,
                        ),
                      ),
                      OriginalSelectableText(
                        text: '2023年度',
                        unSelectedTextStyle: bodyRegular(
                            colorScheme.onBackground.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(4),
                        unSelectedCallback: () {},
                        selectedTextStyle: bodyBold(colorScheme.onBackground),
                        selectedCallback: () {},
                        selectedBackGroundColor:
                            colorScheme.secondary.withOpacity(0.05),
                        isSelected: false,
                        edgeInsets: EdgeInsets.only(
                          left: 16.sp,
                          top: 4.sp,
                          bottom: 4.sp,
                          right: 163.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ColumnBorderLine(),
        ],
      ),
    );
  }
}
