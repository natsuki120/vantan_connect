import 'package:flutter/material.dart';
import '../const/color_schemes.g.dart';
import '../const/space_box.dart';
import '../const/style_by_platform.dart';

class GuidanceMessage extends StatelessWidget {
  const GuidanceMessage({
    super.key,
    required this.mainText,
    required this.subText,
  });

  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpaceBox(height: 64),
        Text(
          mainText,
          style: headLineSmall(bold, colorScheme!.onBackground),
        ),
        SpaceBox(height: 24),
        Text(
          subText,
          style: bodyMedium(medium, colorScheme!.onBackground),
        ),
      ],
    );
  }
}
