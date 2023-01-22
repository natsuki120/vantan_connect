import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/molecule/buttons.dart';
import 'package:vantan_connect/new_atomic_design/molecule/select_date.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/color.dart';

Future createNewTermModalTemplate(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Stack(
          children: [
            SpaceBox(height: 40.sp),
            OriginalText(
              text: '新年度予定表を作成する',
              textStyle: title2Bold(highEmphasis),
            ),
            SpaceBox(height: 93.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OriginalText(text: '年度別', textStyle: headLineBold(midEmphasis)),
                SpaceBox(height: 10.sp),
                SelectDate(''),
                SpaceBox(height: 28.sp),
                OriginalText(
                    text: '年度期間', textStyle: headLineBold(midEmphasis)),
                SpaceBox(height: 10.sp),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectDate('年度初日'),
                    SpaceBox(width: 86),
                    SelectDate('年度末日'),
                  ],
                ),
                SpaceBox(height: 90.sp),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FilledEnabledButton(
                    text: '作成する',
                    textStyle: bodyBold(Colors.white),
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.sp,
                      vertical: 10.sp,
                    ),
                    backgroundColor: primary,
                  ),
                ),
                SpaceBox(height: 20.sp),
              ],
            ),
          ],
        ),
      );
    },
  );
}
