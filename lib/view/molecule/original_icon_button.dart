import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';

class OriginalIconButton extends StatelessWidget {
  const OriginalIconButton({
    Key? key,
    required this.callback,
    required this.iconData,
    required this.iconSize,
  }) : super(key: key);

  final VoidCallback callback;
  final IconData iconData;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      icon: OriginalIcon(
        iconData: iconData,
        iconSize: iconSize,
      ),
    );
  }
}
