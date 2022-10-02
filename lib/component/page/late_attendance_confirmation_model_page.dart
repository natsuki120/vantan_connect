import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/organism/attendance_button_and_absence_button.dart';
import 'package:vantan_connect/component/page/wirte_reason_modal_page.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/view_model/attendance_status_state/attendance_status_state_view_model.dart';
import '../atom/space_box.dart';
import '../../view_model/user_state/user_view_model.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../organism/guidance_message.dart';

void lateAttendanceConfirmationModalPage({
  required BuildContext context,
  required String mainText,
  required ClassByDayState classByDayState,
}) {
  showModalBottomSheet<Container>(
    backgroundColor: colorScheme.background,
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (BuildContext context) {
      return Container(
        height: 628,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SpaceBox(height: 40),
              GuidanceMessage(
                mainText: mainText,
                subText:
                    '授業が既に開始されています。途中参加する場合は『出席する』を押してください。欠席または遅刻で特別な理由がある場合は『遅刻・欠席の理由を書く』から理由を送信してください。',
                mainTextStyle:
                    titleLarge(FontWeight.w600, colorScheme.onBackground),
                subTextStyle:
                    bodyMedium(FontWeight.w300, colorScheme.onBackground),
                mainTextAlign: TextAlign.center,
              ),
              const SpaceBox(height: 24),
              // 出席ボタン
              Consumer(builder: (context, ref, child) {
                return AttendanceButton(
                  width: double.infinity,
                  height: 336,
                  text: '途中参加する',
                  imagePath: 'images/attendance_img.png',
                  classByDayState: classByDayState,
                );
              }),
              Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: colorScheme.onBackground),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('欠席する'),
                      ),
                    ),
                    onTap: () async {
                      // EasyLoading.show(status: 'loading...');
                      // await ref
                      //     .read(userViewModel.notifier)
                      //     .sendAbsence(ref.watch(userViewModel.notifier).state);
                      // Navigator.of(context).pop();
                      // EasyLoading.showSuccess('欠席データを送信しました');
                      writeReasonModalPage(context, '欠席', classByDayState);
                    },
                  );
                },
              ),
              Consumer(builder: (context, ref, child) {
                return GestureDetector(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('遅刻する'),
                    ),
                  ),
                  onTap: () async {
                    // EasyLoading.show(status: 'loading...');
                    // await ref
                    //     .read(userViewModel.notifier)
                    //     .sendLateness(ref.watch(userViewModel.notifier).state);
                    // Navigator.of(context).pop();
                    // EasyLoading.showSuccess('遅刻データを送信しました');
                    writeReasonModalPage(context, '遅刻', classByDayState);
                  },
                );
              }),
              // GuidanceButton(
              //   subText: '遅刻・欠席する理由を書く',
              //   textStyle:
              //       labelLarge(FontWeight.w300, colorScheme!.onBackground),
              //   subCallback: () => sendReasonModalTemplate(context),
              // )
            ],
          ),
        ),
      );
    },
  );
}
