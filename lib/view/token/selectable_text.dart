import 'package:flutter/material.dart';

class OriginalSelectableText extends StatelessWidget {
  const OriginalSelectableText({
    Key? key,
    required this.text,
    required this.unSelectedTextStyle,
    required this.unSelectedCallback,
    required this.selectedTextStyle,
    required this.selectedCallback,
    required this.isSelected,
    required this.selectedBackGroundColor,
    required this.edgeInsets,
    required this.borderRadius,
  }) : super(key: key);

  final String text;
  final TextStyle unSelectedTextStyle;
  final VoidCallback unSelectedCallback;
  final TextStyle selectedTextStyle;
  final VoidCallback selectedCallback;
  final Color selectedBackGroundColor;
  final bool isSelected;
  final EdgeInsets edgeInsets;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            padding: edgeInsets,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: selectedBackGroundColor,
            ),
            child: Text(text, style: selectedTextStyle),
          )
        : Container(
            padding: edgeInsets,
            child: Text(text, style: unSelectedTextStyle),
          );
  }
}
