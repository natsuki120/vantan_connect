import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/color_schemes.g.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/style_by_platform.dart';
import 'package:vantan_connect/view/molecule/border_box.dart';

class TextCard extends StatelessWidget {
  const TextCard({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return BorderBox(
      radius: 12,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
      child: MainText(
        text: text,
        textStyle: Caption1(colorScheme.onBackground),
      ),
    );
  }
}
