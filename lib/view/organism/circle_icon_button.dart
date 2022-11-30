import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/original_icon_button.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    Key? key,
    required this.backgroundColor,
    required this.iconData,
    required this.iconSize,
    required this.callback,
  }) : super(key: key);

  final Color backgroundColor;
  final IconData iconData;
  final double iconSize;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: backgroundColor),
        color: backgroundColor,
      ),
      child: OriginalIconButton(
        iconData: iconData,
        iconSize: iconSize,
        callback: callback,
      ),
    );
  }
}
