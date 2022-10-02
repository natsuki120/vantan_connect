import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/atom/space_box.dart';

class HorizontalOfTextAndIcon extends StatelessWidget {
  const HorizontalOfTextAndIcon({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: labelLarge(
              FontWeight.w300, colorScheme.onBackground.withOpacity(0.6)),
        ),
        SpaceBox(width: 10),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
