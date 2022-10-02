import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/primary_color_button.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import '../molecule/tappable_text.dart';

class GuidanceButton extends StatelessWidget {
  GuidanceButton({
    super.key,
    this.mainText,
    this.subText,
    this.mainCallback,
    this.subCallback,
    this.textStyle,
  });

  String? mainText;
  String? subText;
  TextStyle? textStyle;
  GestureTapCallback? mainCallback;
  VoidCallback? subCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (mainText != null && mainCallback != null)
          PrimaryColorButton(
            text: mainText!,
            callback: mainCallback!,
          ),
        const SpaceBox(height: 23),
        if (subText != null && textStyle != null && subCallback != null)
          TappableText(
            text: subText!,
            textStyle: textStyle!,
            voidCallback: subCallback!,
          ),
      ],
    );
  }
}
