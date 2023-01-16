import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/text_with_icon_button.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class TextWithIconButtonAboveContent extends StatelessWidget {
  const TextWithIconButtonAboveContent({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.spaceSizeBetweenTextAndIcon,
    required this.iconWidget,
    required this.callback,
    required this.mainAxisAlignment,
    required this.spaceSizeAboveContent,
    required this.content,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final double spaceSizeBetweenTextAndIcon;
  final Widget iconWidget;
  final VoidCallback callback;
  final MainAxisAlignment mainAxisAlignment;
  final double spaceSizeAboveContent;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithIconButton(
          text: text,
          textStyle: textStyle,
          spaceSize: spaceSizeBetweenTextAndIcon,
          iconWidget: iconWidget,
          callback: callback,
          mainAxisAlignment: mainAxisAlignment,
        ),
        SpaceBox(height: spaceSizeAboveContent),
        content,
      ],
    );
  }
}
