import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';

class TitleInBox extends StatelessWidget {
  const TitleInBox({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.borderRadius,
    required this.textStyle,
    required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final BorderRadius borderRadius;
  final TextStyle textStyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: color, borderRadius: borderRadius),
      child: Center(child: TitleInMolecule(text: text, textStyle: textStyle)),
    );
  }
}
