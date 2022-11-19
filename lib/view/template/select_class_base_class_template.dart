import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/atom/tappable_text.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';
import 'package:vantan_connect/view/organism/class_card.dart';
import 'package:vantan_connect/view/molecule/primary_color_button.dart';
import 'package:vantan_connect/view/template/select_class_base_class_detail.dart';
import '../atom/color_schemes.g.dart';

class SelectClassBaseClassTemplate extends StatelessWidget {
  const SelectClassBaseClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.onBackground,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: 'ベースクラス一覧',
              textStyle: title1Bold(colorScheme.onBackground),
            ),
            SpaceBox(height: 40.h),
            ClassCard(
              timelineList: [],
              underWidget: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BorderBox(
                    child: TappableText(
                      text: '詳細を見る',
                      textStyle: bodyBold(colorScheme.primary),
                      voidCallback: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SelectClassBaseClassDetailTemplate(),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.sp, vertical: 10.sp),
                    radius: 20,
                  ),
                  PrimaryColorButton(
                    callback: () {},
                    width: 108.w,
                    height: 40.h,
                    child: MainText(
                      text: '選択する',
                      textStyle: bodyBold(colorScheme.background),
                    ),
                  )
                ],
              ),
            ),
            SpaceBox(height: 16.h),
            ClassCard(
              timelineList: [],
              underWidget: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BorderBox(
                    child: MainText(
                      text: '詳細を見る',
                      textStyle: bodyBold(colorScheme.primary),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.sp,
                      vertical: 10.sp,
                    ),
                    radius: 20,
                  ),
                  PrimaryColorButton(
                    callback: () {},
                    width: 108.w,
                    height: 40.h,
                    child: MainText(
                      text: '選択する',
                      textStyle: bodyBold(colorScheme.background),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
