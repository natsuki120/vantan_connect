import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/attendance_button_and_absence_button.dart';
import 'package:vantan_connect/component/organism/guidance_button.dart';
import 'package:vantan_connect/component/template/send_reason_modal_template.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import '../atom/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../organism/guidance_message.dart';

void attendanceConfirmationModalTemplate(BuildContext context) async {
  await showModalBottomSheet<Container>(
    backgroundColor: colorScheme.background,
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (BuildContext context) {
      return Container(
        height: 636,
        margin: const EdgeInsets.only(top: 64),
        child: Column(
          children: [
            const SpaceBox(height: 40),
            GuidanceMessage(
              mainText: 'タイトルタイトル',
              subText: 'せつめいせつめいせつめいせつめいせつめいせつめい',
              mainTextStyle:
                  titleLarge(FontWeight.w600, colorScheme.onBackground),
              subTextStyle:
                  bodyMedium(FontWeight.w300, colorScheme.onBackground),
              mainTextAlign: TextAlign.center,
            ),
            const SpaceBox(height: 24),
            // 出席ボタン
            AttendanceButton(
              width: 342,
              height: 360,
              text: 'タイトルタイトルタイトル',
              imagePath: '',
              classByDayState: ClassByDayState(),
            ),
            const SpaceBox(height: 23),
            GuidanceButton(
              subText: '欠席遅刻早退欠席遅刻早退',
              textStyle: labelLarge(FontWeight.w300, colorScheme.onBackground),
              subCallback: () => sendReasonModalTemplate(context),
            )
          ],
        ),
      );
    },
  );
}
