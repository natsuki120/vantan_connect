import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../color/color.dart';
import '../../text_style/text_style.dart';

class AttendStatus extends StatelessWidget {
  const AttendStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.sp,
      height: 28.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: primary10,
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: Text('出席', style: bodyRegular(midEmphasis)),
    );
  }
}
