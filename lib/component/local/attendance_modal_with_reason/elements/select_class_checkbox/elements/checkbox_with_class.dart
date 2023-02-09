import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/single/color.dart';
import '../../../../../shared/single/space_box.dart';
import '../../../../../shared/single/text_style.dart';

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
  final bool? value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: primary,
      value: value,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
      title: Row(
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
      ),
    );
  }
}
