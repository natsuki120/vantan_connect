import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../token/color/color.dart';

class BorderLine extends StatelessWidget {
  const BorderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.sp,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: lowEmphasis.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
    );
  }
}
