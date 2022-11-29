import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/border_box_which_move_to_select_base_class.dart';
import 'package:vantan_connect/view/organism/title_and_valueless_box.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/template/select_class_base_class_template.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class SelectClassTemplate extends StatelessWidget {
  const SelectClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleAndSelectClassScreen(
      title: '時間割を作成',
      children: [
        SpaceBox(height: 40.h),
        TitleAndBorderBoxWhichMoveToSelectBaseClass(
          title: 'ベースクラス',
          textStyle: bodyRegular(colorScheme.onBackground),
          pageRoute: SelectClassBaseClassTemplate(),
          iconData: Icons.add,
          width: 40.w,
          height: 40.h,
          text: '選択する',
          padding: EdgeInsets.symmetric(horizontal: 159.w, vertical: 26.h),
          radius: 12.sp,
          buttonPadding: EdgeInsets.all(20.sp),
          titleTextStyle: bodyBold(colorScheme.onBackground),
        ),
        SpaceBox(height: 40.h),
        TitleAndValuelessBox(
          title: '選択クラス',
          textStyle: bodyBold(colorScheme.onBackground),
        )
      ],
    );
  }
}
