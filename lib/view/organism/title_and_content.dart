import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../token/style_by_platform.dart';

class TitleAndContent extends StatelessWidget {
  const TitleAndContent({Key? key, required this.title, required this.content})
      : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleInMolecule(
          text: title,
          textStyle: title2Bold(colorScheme.onBackground),
        ),
        SpaceBox(height: 8),
        RowBorderLine(),
        SpaceBox(height: 16),
        content,
      ],
    );
  }
}
