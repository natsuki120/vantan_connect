import 'package:flutter/material.dart';

import 'color.dart';
import 'test_style.dart';

class RadioButtonWithText extends StatelessWidget {
  const RadioButtonWithText({
    super.key,
    required this.text,
    required this.value,
    required this.groupValue,
  });
  final String value;
  final String text;
  final Object groupValue;

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
        onChanged: (Object? value) {},
      ),
    );
  }
}
