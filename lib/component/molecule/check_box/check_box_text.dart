import 'package:flutter/material.dart';

class CheckBoxText extends StatelessWidget {
  const CheckBoxText({super.key, required this.text, required this.textStyle});

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle);
  }
}
