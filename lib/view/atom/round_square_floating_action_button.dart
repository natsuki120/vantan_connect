import 'package:flutter/material.dart';

import '../token//color_schemes.g.dart';

class RoundSquareFloatingActionButton extends StatelessWidget {
  const RoundSquareFloatingActionButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onPressed;
      },
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(6)),
      backgroundColor: colorScheme.primaryContainer.withOpacity(1),
      child: Icon(
        iconData,
        color: colorScheme.onBackground,
      ),
    );
  }
}
