import 'package:flutter/material.dart';
import 'package:vantan_connect/const/color_schemes.g.dart';
import 'package:vantan_connect/const/style_by_platform.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.19,
      ),
      child: Text(
        'バンタン専用の\nコミュニケーションアプリ',
        style: headLineSmall(bold, colorScheme!.onPrimary),
        textAlign: TextAlign.center,
      ),
    );
  }
}
