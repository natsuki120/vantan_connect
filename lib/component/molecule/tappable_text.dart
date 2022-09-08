import 'package:flutter/material.dart';

class TappableText extends StatelessWidget {
  const TappableText({
    super.key,
    required this.text,
    required this.textStyle,
    required this.voidCallback,
  });

  final String text;
  final TextStyle textStyle;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Text(text, style: textStyle),
    );
  }
}
