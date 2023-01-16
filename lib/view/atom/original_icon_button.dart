import 'package:flutter/material.dart';

class OriginalIconButton extends StatelessWidget {
  const OriginalIconButton({
    Key? key,
    required this.iconWidget,
    required this.callback,
  }) : super(key: key);

  final Widget iconWidget;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: callback, icon: iconWidget);
  }
}
