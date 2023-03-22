import 'package:flutter/material.dart';

//TODO: ListTile化する
class RadioButtonWithText extends StatelessWidget {
  const RadioButtonWithText({
    super.key,
    required this.text,
    required this.textStyle,
    required this.activeColor,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });
  final String text;
  final TextStyle textStyle;
  final Color activeColor;
  final Object value;
  final Object? groupValue;
  final void Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(text, style: textStyle),
      value: value,
      activeColor: activeColor,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
