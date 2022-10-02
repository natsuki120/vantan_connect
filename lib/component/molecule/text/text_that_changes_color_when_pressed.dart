import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';

class TextThatChangesColorWhenPressed extends StatefulWidget {
  const TextThatChangesColorWhenPressed({Key? key, required this.text})
      : super(key: key);

  final String text;
  @override
  State<TextThatChangesColorWhenPressed> createState() =>
      _TextThatChangesColorWhenPressedState();
}

class _TextThatChangesColorWhenPressedState
    extends State<TextThatChangesColorWhenPressed> {
  bool onTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: onTapped ? colorScheme.primary : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Text(
          widget.text,
          style: onTapped
              ? labelMedium(FontWeight.w600, colorScheme.onPrimary)
              : labelMedium(FontWeight.w300, colorScheme.onSurface),
        ),
      ),
      onTap: () => setState(() => onTapped = !onTapped),
    );
  }
}
