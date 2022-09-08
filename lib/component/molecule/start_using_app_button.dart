import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/primary_color_button.dart';
import 'package:vantan_connect/component/molecule/tappable_text.dart';
import 'package:vantan_connect/const/space_box.dart';

// TODO 正しい名前を考える
class StartUsingAppButton extends StatelessWidget {
  const StartUsingAppButton({
    super.key,
    required this.resisterText,
    required this.resisterTextStyle,
    required this.resisterVoidCallback,
    required this.loginText,
    required this.loginTextStyle,
    required this.loginVoidCallback,
  });

  final String resisterText;
  final TextStyle resisterTextStyle;
  final VoidCallback resisterVoidCallback;
  final String loginText;
  final TextStyle loginTextStyle;
  final VoidCallback loginVoidCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryColorButton(
          text: resisterText,
          voidCallBack: resisterVoidCallback,
          textStyle: resisterTextStyle,
        ),
        const SpaceBox(height: 23),
        TappableText(
          text: loginText,
          textStyle: loginTextStyle,
          voidCallback: loginVoidCallback,
        )
      ],
    );
  }
}
