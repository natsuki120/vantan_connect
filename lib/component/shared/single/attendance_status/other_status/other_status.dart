import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../color/color.dart';
import '../../text_style/text_style.dart';

class OtherStatus extends StatelessWidget {
  const OtherStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 61.sp,
      height: 28.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: surfaceSecondary,
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: Text(
        '未反応',
        style: bodyRegular(midEmphasis),
      ),
    );
  }
}
