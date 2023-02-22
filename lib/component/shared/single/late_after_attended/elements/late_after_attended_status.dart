import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../color/color.dart';
import '../../text_style/text_style.dart';

class LateAfterAttendedStatus extends StatelessWidget {
  const LateAfterAttendedStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.sp,
      height: 28.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffF2CFAA),
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: Text('出席', style: bodyRegular(midEmphasis)),
    );
  }
}
