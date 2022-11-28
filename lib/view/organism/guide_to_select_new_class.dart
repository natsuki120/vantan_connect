import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/primary_color_button_with_icon_and_text.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import '../token/color_schemes.g.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

class GuideToSelectNewClass extends StatelessWidget {
  const GuideToSelectNewClass({
    Key? key,
    required this.pageRoute,
    required this.callback,
  }) : super(key: key);

  final Widget pageRoute;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleMessage(
          text: '後期の時間割を選択してください',
          textStyle: headLineBold(colorScheme.onBackground),
        ),
        SpaceBox(height: 36.h),
        PrimaryColorButtonWithIconAndText(
          callback: callback,
          width: 126.w,
          height: 40.h,
          pageRoute: pageRoute,
          iconData: Icons.add,
          iconSize: 18.sp,
          iconColor: colorScheme.background,
          text: '作成する',
          spaceSize: 9.w,
          mainAxisAlignment: MainAxisAlignment.center,
          textStyle: bodyBold(colorScheme.background),
        )
      ],
    );
  }
}
