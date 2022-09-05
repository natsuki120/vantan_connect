import 'package:flutter/material.dart';
import '../../const/color_schemes.g.dart';

class PrimaryColorButton extends StatelessWidget {
  const PrimaryColorButton({
    super.key,
    required this.text,
    required this.voidCallBack,
    required this.textStyle,
  });

  final String text;
  final TextStyle textStyle;
  final VoidCallback voidCallBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: colorScheme!.primary,
          onPrimary: colorScheme!.onPrimary,
        ),
        onPressed: voidCallBack,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
