import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import 'package:vantan_connect/view/atom/original_icon_button.dart';
import '../token/space_box.dart';

class TextWithIconButton extends StatelessWidget {
  const TextWithIconButton({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.spaceSize,
    required this.iconWidget,
    required this.callback,
    required this.mainAxisAlignment,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final double spaceSize;
  final Widget iconWidget;
  final VoidCallback callback;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        MainText(text: text, textStyle: textStyle),
        SpaceBox(width: spaceSize),
        OriginalIconButton(iconWidget: iconWidget, callback: callback),
      ],
    );
  }
}
