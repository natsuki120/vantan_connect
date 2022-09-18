import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import '../../const/space_box.dart';
import '../../view_model/user_state/user_view_model.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';

class AttendanceButton extends StatelessWidget {
  const AttendanceButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.imagePath,
  });

  final String text;
  final double width;
  final double height;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return GestureDetector(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorScheme!.primaryContainer,
            ),
            child: Column(
              children: [
                const SpaceBox(height: 40),
                GuidanceMessage(
                  mainText: text,
                  mainTextStyle: headLineMedium(
                    FontWeight.w600,
                    colorScheme!.onPrimaryContainer,
                  ),
                ),
                Container(
                  width: 262,
                  height: 216,
                  child: Image.asset(imagePath),
                ),
              ],
            ),
          ),
          onTap: () async {
            EasyLoading.show(status: 'loading...');
            await ref
                .read(userViewModel.notifier)
                .sendAttendance(ref.watch(userViewModel.notifier).state);
            EasyLoading.showSuccess('出席データを送信しました');
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
