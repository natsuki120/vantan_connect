import 'package:flutter/material.dart';

import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/navigator/navigator.dart';
import '../../../../shared/single/text_style/text_style.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          NavigatorPopUntilFirstPage(context);
        },
        child: Text(
          'キャンセル',
          style: callOutRegular(black),
        ));
  }
}
