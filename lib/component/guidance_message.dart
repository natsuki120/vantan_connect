import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/text/description_text.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'atom/space_box.dart';

class GuidanceMessage extends StatelessWidget {
  const GuidanceMessage({
    super.key,
    required this.mainText,
    required this.subText,
    required this.mainTextStyle,
    required this.subTextStyle,
    required this.mainTextAlign,
  });

  final String mainText;
  final TextStyle mainTextStyle;
  final TextAlign mainTextAlign;
  final String subText;
  final TextStyle subTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainText(text: mainText, textStyle: mainTextStyle),
        const SpaceBox(height: 24),
        DescriptionText(text: subText, textStyle: subTextStyle),
      ],
    );
  }
}
