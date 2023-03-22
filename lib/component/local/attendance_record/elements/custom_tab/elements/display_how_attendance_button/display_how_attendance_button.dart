import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import '../../../../../../shared/single/color/color.dart';
import '../../../../../../shared/single/text_style/text_style.dart';

class DisplayHowAttendanceButton extends HookConsumerWidget {
  const DisplayHowAttendanceButton({super.key, required this.attendance});

  final String attendance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectAttendanceButtonText =
        ref.watch(selectedAttendanceButtonProvider.notifier);
    if (selectAttendanceButtonText.state == attendance) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.sp),
            color: primary,
          ),
          child: Text(attendance, style: bodyBold(white)),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => selectAttendanceButtonText.state = attendance,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(attendance, style: bodyRegular(midEmphasis)),
        ),
      );
    }
  }
}
