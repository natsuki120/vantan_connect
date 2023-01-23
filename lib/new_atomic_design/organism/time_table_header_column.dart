import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/new_atomic_design/atom/original_text.dart';
import 'package:vantan_connect/new_atomic_design/token/color.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class UnSelectedTimeTableHeaderColumn extends StatelessWidget {
  const UnSelectedTimeTableHeaderColumn({
    Key? key,
    required this.start,
    required this.timeTable,
    required this.end,
  }) : super(key: key);

  final String start;
  final int timeTable;
  final String end;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32.sp,
      height: 96.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OriginalText(
            text: start,
            textStyle: caption1Regular(
              lowEmphasis.withOpacity(0.5),
            ),
          ),
          SpaceBox(height: 8.sp),
          Container(
            width: 24.sp,
            height: 24.sp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.sp),
              border: Border.all(color: surfaceSecondary.withOpacity(0.05)),
            ),
            child: OriginalText(
              text: timeTable.toString(),
              textStyle: bodyRegular(midEmphasis.withOpacity(0.7)),
            ),
          ),
          SpaceBox(height: 8.sp),
          OriginalText(
            text: end,
            textStyle: caption1Regular(
              lowEmphasis.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
