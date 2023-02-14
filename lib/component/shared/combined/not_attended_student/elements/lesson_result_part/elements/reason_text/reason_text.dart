import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../single/color/color.dart';
import '../../../../../../single/text_style/text_style.dart';

class ReasonText extends StatelessWidget {
  const ReasonText({super.key, required this.reasonText});

  final String reasonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 276.sp,
          decoration: BoxDecoration(
              color: surfaceTertiary, borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('理由', style: caption1Bold(midEmphasis)),
              SizedBox(height: 8.sp),
              Text(reasonText, style: callOutRegular(black)),
            ]),
          ),
        ),
      ],
    );
  }
}
