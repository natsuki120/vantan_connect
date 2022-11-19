import 'package:flutter/material.dart';
import 'color_schemes.g.dart';

class BorderLine extends StatelessWidget {
  const BorderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colorScheme.onBackground.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
