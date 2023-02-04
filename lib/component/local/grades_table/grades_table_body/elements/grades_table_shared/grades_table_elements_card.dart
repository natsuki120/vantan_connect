import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/single/color.dart';
import '../../../../../shared/single/text_style.dart';

class GradesTableElementsCard extends StatelessWidget {
  GradesTableElementsCard({super.key, required this.elementText});
  final String elementText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderLowEmphasis),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.symmetric(horizontal: 11.sp, vertical: 3.sp),
      child: Center(
        child: Text(
          elementText,
          style: caption1Regular(lowEmphasis),
        ),
      ),
    );
  }
}
