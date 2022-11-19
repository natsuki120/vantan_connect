import 'package:flutter/material.dart';
import '../atom/description_text.dart';
import '../atom/main_text.dart';
import '../atom/space_box.dart';

class GuidanceMessage extends StatelessWidget {
  const GuidanceMessage({
    super.key,
    required this.mainText,
    required this.subText,
    required this.mainTextStyle,
    required this.subTextStyle,
    required this.crossAxisAlignment,
    required this.spaceSize,
  });

  final String mainText;
  final TextStyle mainTextStyle;
  final String subText;
  final TextStyle subTextStyle;
  final CrossAxisAlignment crossAxisAlignment;
  final double spaceSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        MainText(text: mainText, textStyle: mainTextStyle),
        SpaceBox(height: spaceSize),
        DescriptionText(text: subText, textStyle: subTextStyle),
      ],
    );
  }
}
