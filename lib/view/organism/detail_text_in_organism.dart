import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';

class DetailTextInOrganism extends StatelessWidget {
  const DetailTextInOrganism(
      {Key? key, required this.text, required this.textStyle})
      : super(key: key);

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TitleInMolecule(text: text, textStyle: textStyle);
  }
}
