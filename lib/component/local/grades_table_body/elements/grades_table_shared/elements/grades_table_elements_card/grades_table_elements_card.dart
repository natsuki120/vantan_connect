import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/token/color/color.dart';
import '../../../../../../shared/token/text_style/text_style.dart';

class GradesTableElementsCard extends StatelessWidget {
  GradesTableElementsCard({super.key, required this.elementText});
  final String elementText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: surfaceTertiary,
        border: Border.all(color: borderLowEmphasis),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      child: Center(
        child: Text(
          elementText,
          style: caption1Regular(highEmphasis),
        ),
      ),
    );
  }
}
