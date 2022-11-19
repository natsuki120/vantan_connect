import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/space_box.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
import 'package:vantan_connect/view/molecule/primary_color_button.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/template/select_class_template.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        centerTitle: false,
        title: MainText(
          text: 'スケジュール',
          textStyle: header(colorScheme.onBackground),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainText(
              text: '後期の時間割を選択してください',
              textStyle: headLineBold(colorScheme.onBackground),
            ),
            SpaceBox(height: 36.h),
            PrimaryColorButton(
              callback: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SelectClassTemplate(),
                ),
              ),
              width: 126.w,
              height: 40.h,
              child: IconAndText(
                iconData: Icons.add,
                text: '作成する',
                textStyle: bodySemiBold(colorScheme.background),
                spaceSize: 11.w,
                color: colorScheme.background,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
