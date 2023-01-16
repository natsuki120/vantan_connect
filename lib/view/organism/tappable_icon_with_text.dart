import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/Icon_and_text.dart';

class TappableIconWithText extends StatelessWidget {
  const TappableIconWithText({
    Key? key,
    required this.iconData,
    required this.text,
    required this.textStyle,
    required this.spaceSize,
    required this.color,
    required this.mainAxisAlignment,
    required this.callback,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Color color;
  final MainAxisAlignment mainAxisAlignment;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: IconAndText(
        iconData: iconData,
        text: text,
        textStyle: textStyle,
        spaceSize: spaceSize,
        color: color,
        mainAxisAlignment: mainAxisAlignment,
      ),
    );
  }
}
