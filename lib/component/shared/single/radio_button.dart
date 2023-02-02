import 'package:flutter/material.dart';

import '../../shared/single/color.dart';
import '../../shared/single/test_style.dart';

class RadioButtonWithText extends StatelessWidget {
  const RadioButtonWithText({
    super.key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });
  final String text;
  final Object value;
  final Object? groupValue;
  final void Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      horizontalTitleGap: 0,
      title: Text(
        text,
        style: callOutRegular(black),
      ),
      leading: Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
