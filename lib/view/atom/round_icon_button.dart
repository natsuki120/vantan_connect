import 'package:flutter/material.dart';
import 'package:vantan_connect/view/token//color_schemes.g.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.iconData,
    required this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final Color backgroundColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: backgroundColor),
        color: backgroundColor,
      ),
      child: IconButton(
        icon: Icon(iconData),
        splashRadius: 100,
        color: colorScheme.onBackground,
        onPressed: () {
          onPressed;
        },
      ),
    );
  }
}
