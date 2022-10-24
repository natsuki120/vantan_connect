import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import '../../component/atom/color_schemes.g.dart';
import '../../component/molecule/text/main_text.dart';
import 'component/guid_auth.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MainText(
            text: 'バンタン専用の\nコミュニケーションアプリ',
            textStyle: headLineSmall(FontWeight.w600, colorScheme.background),
          ),
          GuidAuth(size: size),
        ],
      ),
    );
  }
}
