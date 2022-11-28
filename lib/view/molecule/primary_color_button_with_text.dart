import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../atom/primary_color_button.dart';

class PrimaryColorButtonWithText extends StatelessWidget {
  const PrimaryColorButtonWithText({
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
    return PrimaryColorButton(
      width: width,
      height: height,
      callback: () => callback,
      child: MainText(
        text: text,
        textStyle: bodyBold(colorScheme.background),
      ),
    );
  }
}
