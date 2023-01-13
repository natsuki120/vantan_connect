import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_schemes.g.dart';

class ColumnBorderLine extends StatelessWidget {
  const ColumnBorderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sp,
      height: double.infinity,
      color: colorScheme.onBackground.withOpacity(0.2),
    );
  }
}
