import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/main_text.dart';

class TitleMessage extends StatelessWidget {
  const TitleMessage({Key? key, required this.text, required this.textStyle})
      : super(key: key);

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return MainText(text: text, textStyle: textStyle);
  }
}
