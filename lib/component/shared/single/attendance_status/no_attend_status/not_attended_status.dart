import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../color/color.dart';
import '../../text_style/text_style.dart';

class NotAttendedStatus extends StatelessWidget {
  const NotAttendedStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0),
        minimumSize: Size(
          46.sp,
          28.sp,
        ),
      ),
      onPressed: () {
        print('object');
      },
      child: Container(
        width: 46.sp,
        height: 28.sp,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: tertiaryPale,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Text('欠席', style: bodyRegular(midEmphasis)),
      ),
    );
  }
}
