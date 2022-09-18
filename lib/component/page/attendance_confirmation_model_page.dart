import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/organism/attendance_button_and_absence_button.dart';
import '../../const/space_box.dart';
import '../../view_model/user_state/user_view_model.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../organism/guidance_message.dart';

void attendanceConfirmationModalPage(BuildContext context, String mainText) {
  showModalBottomSheet<Container>(
    backgroundColor: colorScheme!.background,
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
                subText: '授業開始まであと5分です。『出席する』または『欠席する理由を書く』ボタンから出席状況を送信してください。',
                mainTextStyle:
                    titleLarge(FontWeight.w600, colorScheme!.onBackground),
                subTextStyle:
                    bodyMedium(FontWeight.w300, colorScheme!.onBackground),
                mainTextAlign: TextAlign.center,
              ),
              const SpaceBox(height: 24),
              // 出席ボタン
              const AttendanceButton(
                width: double.infinity,
                height: 336,
                text: '出席する',
                imagePath: 'images/attendance_img.png',
              ),
              Consumer(
                builder: (context, ref, child) {
                  return GestureDetector(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: colorScheme!.onBackground),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('欠席する'),
                      ),
                    ),
                    onTap: () async {
                      EasyLoading.show(status: 'loading...');
                      await ref
                          .read(userViewModel.notifier)
                          .sendAbsence(ref.watch(userViewModel.notifier).state);
                      Navigator.of(context).pop();
                      EasyLoading.showSuccess('欠席データを送信しました');
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
                        border: Border.all(color: colorScheme!.onBackground),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text('遅刻する'),
                    ),
                  ),
                  onTap: () async {
                    EasyLoading.show(status: 'loading...');
                    await ref
                        .read(userViewModel.notifier)
                        .sendLateness(ref.watch(userViewModel.notifier).state);
                    Navigator.of(context).pop();
                    EasyLoading.showSuccess('遅刻データを送信しました');
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
