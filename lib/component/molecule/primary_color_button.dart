import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import '../atom/color_schemes.g.dart';

class PrimaryColorButton extends StatelessWidget {
  const PrimaryColorButton({
    super.key,
    required this.text,
    required this.callback,
  });

  final String text;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: colorScheme!.onPrimary,
          backgroundColor: colorScheme!.primary,
        ),
        onPressed: callback,
        child: MainText(
          text: text,
          textStyle: labelLarge(FontWeight.w600, colorScheme!.onPrimary),
        ),
      ),
    );
  }
}
