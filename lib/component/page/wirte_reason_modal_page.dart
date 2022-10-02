import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/view_model/attendance_status_state/attendance_status_state_view_model.dart';
import 'package:vantan_connect/view_model/user_state/user_view_model.dart';
import '../atom/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../organism/guidance_button.dart';
import '../organism/guidance_message.dart';

void writeReasonModalPage(
    BuildContext context, String status, ClassByDayState classByDayState) {
  final reasonController = TextEditingController();
  showModalBottomSheet<Container>(
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
                mainText: '${status}する理由を書いてください',
                mainTextStyle:
                    titleLarge(FontWeight.w600, colorScheme.onBackground),
                mainTextAlign: TextAlign.center,
              ),
              const SpaceBox(height: 24),
              Container(
                height: 200,
                width: double.infinity,
                child: TextField(
                  key: Key('writeReasonKey'),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: reasonController,
                ),
              ),
              Consumer(builder: (context, ref, child) {
                return GuidanceButton(
                  mainText: '送信する',
                  mainCallback: () async {
                    EasyLoading.show(status: 'loading...');
                    await ref
                        .read(attendanceStatusViewModel.notifier)
                        .sendAttendanceStatus(
                          userState: ref.watch(userViewModel.notifier).state,
                          classByDayState: classByDayState,
                          status: status,
                          reason: reasonController.text,
                        );
                    EasyLoading.showSuccess('$statusデータを送信しました');
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                );
              }),
            ],
          ),
        ),
      );
    },
  );
}
