import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/text_with_icon_button.dart';
import 'package:vantan_connect/view/token/row_border_line.dart';
import '../token/space_box.dart';

class TextWithIconButtonAboveBorderLine extends StatelessWidget {
  const TextWithIconButtonAboveBorderLine({
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
    return Column(
      children: [
        TextWithIconButton(
            text: text,
            textStyle: textStyle,
            spaceSize: spaceSize,
            iconWidget: iconWidget,
            callback: callback,
            mainAxisAlignment: mainAxisAlignment),
        SpaceBox(height: spaceSize),
        RowBorderLine(),
      ],
    );
  }
}
