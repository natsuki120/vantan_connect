import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_schemes.g.dart';

class RowBorderLine extends StatelessWidget {
  const RowBorderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.sp,
      height: 10.sp,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colorScheme.onBackground.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
