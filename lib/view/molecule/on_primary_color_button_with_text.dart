import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../atom/on_primary_color_button.dart';

class OnPrimaryColorButtonWithText extends StatelessWidget {
  const OnPrimaryColorButtonWithText({
    Key? key,
    required this.callback,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  final VoidCallback callback;
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return OnPrimaryColorButton(
      callback: callback,
      width: width,
      height: height,
      child: MainText(
        text: text,
        textStyle: bodyBold(colorScheme.primary),
      ),
    );
  }
}
