import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/text/main_text.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({Key? key, required this.text, this.bottom}) : super(key: key);

  final String text;
  PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: MainText(
        text: text,
        textStyle: titleMedium(FontWeight.w600, colorScheme.onSurface),
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
