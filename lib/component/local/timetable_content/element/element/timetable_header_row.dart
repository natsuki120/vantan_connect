import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shered/single/color.dart';
import '../../../../shered/single/test_style.dart';

class UnSelectedTimetableHeaderRow extends StatelessWidget {
  const UnSelectedTimetableHeaderRow({Key? key, required this.weakDay})
      : super(key: key);

  final String weakDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.sp,
      height: 28.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: surfaceSecondary.withOpacity(0.05),
      ),
      child: Text(
        weakDay,
        style: bodyRegular(midEmphasis.withOpacity(0.7)),
      ),
    );
  }
}
