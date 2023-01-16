import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class TitleAboveContent extends StatelessWidget {
  const TitleAboveContent({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.content,
    required this.crossAxisAlignment,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final Widget content;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TitleInMolecule(text: text, textStyle: textStyle),
        SpaceBox(),
        content,
      ],
    );
  }
}
