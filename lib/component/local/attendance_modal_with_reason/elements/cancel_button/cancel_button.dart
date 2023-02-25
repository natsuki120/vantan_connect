import 'package:flutter/material.dart';

import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/text_style/text_style.dart';

class CancelButton extends StatelessWidget {
  CancelButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          'キャンセル',
          style: callOutRegular(black),
        ));
  }
}
