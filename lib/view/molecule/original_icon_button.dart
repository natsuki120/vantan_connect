import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';

class OriginalIconButton extends StatelessWidget {
  const OriginalIconButton({
    Key? key,
    required this.callback,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);

  final VoidCallback callback;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: BoxConstraints(),
      onPressed: callback,
      icon: OriginalIcon(
        iconColor: iconColor,
        iconData: iconData,
        iconSize: iconSize,
      ),
    );
  }
}
