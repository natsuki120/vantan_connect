import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../token//color_schemes.g.dart';
import '../atom/main_text.dart';
import '../token/space_box.dart';
import '../token/style_by_platform.dart';

//Finishとの違いは Finishがもうできなくなった授業　Doneが行った授業と分けたため
class DoneClassCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      height: 101.h,
      decoration: BoxDecoration(
        color: colorScheme.surfaceVariant.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 72.w,
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(
                color: colorScheme.onBackground.withOpacity(0.25),
                width: 1.w,
              ),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainText(
                  text: '第1回',
                  textStyle: caption1Regular(colorScheme.onBackground),
                ),
                MainText(
                  text: '5/10',
                  textStyle: headLineBold(colorScheme.onBackground),
                ),
              ],
            ),
          ),
          SpaceBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainText(
                  text: 'UI/UXとは?',
                  textStyle: headLineBold(colorScheme.onBackground),
                ),
                SpaceBox(height: 8.h),
                MainText(
                  text: '山路やまみちを登りながら、こう考えた。智ちに働けば角かどが立つ...',
                  textStyle: bodyRegular(colorScheme.onBackground),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
