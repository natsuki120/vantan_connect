import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';

import '/component/shered/single/color.dart';
import '/component/shered/single/test_style.dart';

//TODO: コンフリクトがあるので一旦ここで import含めてその際に行う。
//TODO: ListTileにしたほうがいいかも？
class CheckboxWithClass extends StatelessWidget {
  const CheckboxWithClass({
    super.key,
    required this.period,
    required this.className,
    required this.value,
    required this.onChanged,
  });
  final String period;
  final String className;
  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          focusColor: primary,
          activeColor: primary,
          value: value,
          onChanged: onChanged,
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
