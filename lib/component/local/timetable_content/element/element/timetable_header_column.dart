import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';
import '../../../../shered/single/test_style.dart';
import '../../../../shered/single/color.dart';

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
          Text(
            start,
            style: caption1Regular(
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
            child: Text(
              timeTable.toString(),
              style: bodyRegular(midEmphasis.withOpacity(0.7)),
            ),
          ),
          SpaceBox(height: 8.sp),
          Text(
            end,
            style: caption1Regular(lowEmphasis.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
