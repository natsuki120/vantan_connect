import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  MainText(
      {super.key, required this.text, required this.textStyle, this.textAlign});

  final String text;
  final TextStyle textStyle;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle, textAlign: textAlign);
  }
}
