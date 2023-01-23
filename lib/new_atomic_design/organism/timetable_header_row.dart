import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

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
      child: OriginalText(
        text: weakDay,
        textStyle: bodyRegular(midEmphasis.withOpacity(0.7)),
      ),
    );
  }
}
