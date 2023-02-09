import 'package:flutter/material.dart';

import '../../../../../../shared/single/color/color.dart';
import '../../../../../../shared/single/text_style/text_style.dart';

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
          Text(
            className,
            style: callOutRegular(highEmphasis),
          ),
        ],
      ),
    );
  }
}
