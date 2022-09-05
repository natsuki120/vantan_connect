import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import '../../const/space_box.dart';

class GuidanceMessage extends StatelessWidget {
  const GuidanceMessage({
    super.key,
    required this.mainText,
    required this.subText,
    required this.mainTextStyle,
    required this.subTextStyle,
  });

  final String mainText;
  final String subText;
  final TextStyle mainTextStyle;
  final TextStyle subTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SpaceBox(height: 64),
        MainText(text: mainText, textStyle: mainTextStyle),
        const SpaceBox(height: 24),
        Text(subText, style: subTextStyle),
      ],
    );
  }
}
