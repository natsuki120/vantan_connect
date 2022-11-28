import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/original_icon.dart';
import 'package:vantan_connect/view/atom/primary_color_button.dart';

class PrimaryColorButtonWithOriginalIcon extends StatelessWidget {
  const PrimaryColorButtonWithOriginalIcon({
    Key? key,
    required this.callback,
    required this.iconData,
    required this.width,
    required this.height,
    required this.buttonPadding,
    required this.iconSize,
  }) : super(key: key);

  final VoidCallback callback;
  final IconData iconData;
  final double width;
  final double height;
  final EdgeInsets buttonPadding;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return PrimaryColorButton(
      width: width,
      height: height,
      callback: callback,
      child: OriginalIcon(iconData: iconData, iconSize: iconSize),
    );
  }
}
