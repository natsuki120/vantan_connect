import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/single/space_box/space_box.dart';
import '../../../../shared/single/text_style/text_style.dart';
import '../../../../shared/single/color/color.dart';

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
      width: 32,
      height: 92,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SpaceBox(height: 8),
          Text(start,
              style: caption1Regular(
                lowEmphasis.withOpacity(0.5),
              ),
              softWrap: false),
          SpaceBox(height: 8),
          Container(
            width: 24,
            height: 24,
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
          SpaceBox(height: 8),
          Text(end,
              style: caption1Regular(lowEmphasis.withOpacity(0.5)),
              softWrap: false),
        ],
      ),
    );
  }
}
