import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/text/description_text.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import '../atom/space_box.dart';

class GuidanceMessage extends StatelessWidget {
  GuidanceMessage({
    super.key,
    this.mainText,
    this.mainTextStyle,
    this.subText,
    this.subTextStyle,
    this.mainTextAlign,
  });

  String? mainText;
  String? subText;
  TextStyle? mainTextStyle;
  TextStyle? subTextStyle;
  TextAlign? mainTextAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (mainText != null && mainTextStyle != null)
          MainText(
            text: mainText!,
            textStyle: mainTextStyle!,
            textAlign: mainTextAlign,
          ),
        const SpaceBox(height: 20),
        if (subText != '' && subTextStyle is TextStyle)
          DescriptionText(text: subText!, textStyle: subTextStyle!),
      ],
    );
  }
}
