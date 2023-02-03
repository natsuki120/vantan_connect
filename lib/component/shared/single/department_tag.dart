import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/single/color.dart';
import '../../shared/single/space_box.dart';
import 'text_style.dart';

class DepartmentTag extends StatelessWidget {
  const DepartmentTag({Key? key, required this.department}) : super(key: key);

  final String department;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: primary,
            shape: BoxShape.circle,
          ),
        ),
        SpaceBox(width: 4.sp),
        Text(
          department,
          style: subHeadLineRegular(
            lowEmphasis.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
