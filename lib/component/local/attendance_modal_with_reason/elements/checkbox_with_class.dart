import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';

import '/component/shered/single/color.dart';
import '/component/shered/single/test_style.dart';

class CheckboxWithClass extends StatelessWidget {
  const CheckboxWithClass({
    super.key,
    required this.period,
    required this.className,
  });
  final String period;
  final String className;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: primary,
          value: true,
          onChanged: null,
        ),
        Row(
          children: [
            Text(
              period,
              style: callOutRegular(highEmphasis),
            ),
            SpaceBox(width: 8.w),
            Text(
              className,
              style: callOutRegular(highEmphasis),
            ),
          ],
        )
      ],
    );
  }
}
