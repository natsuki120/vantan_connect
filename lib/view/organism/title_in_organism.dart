import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';

class TitleInOrganism extends StatelessWidget {
  const TitleInOrganism({Key? key, required this.text, required this.textStyle})
      : super(key: key);

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TitleMessage(text: text, textStyle: textStyle);
  }
}
