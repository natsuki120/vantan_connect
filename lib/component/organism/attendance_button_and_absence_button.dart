import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import '../../const/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../molecule/tappable_text.dart';
import '../template/send_reason_modal_template.dart';

class AttendanceButton extends StatelessWidget {
  const AttendanceButton({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        color: colorScheme!.primaryContainer,
        child: Column(
          children: [
            const SpaceBox(height: 40),
            GuidanceMessage(
              mainText: 'タイトル',
              mainTextStyle: headLineMedium(
                FontWeight.w600,
                colorScheme!.onPrimaryContainer,
              ),
            ),
            Container(
              width: 262,
              height: 216,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
