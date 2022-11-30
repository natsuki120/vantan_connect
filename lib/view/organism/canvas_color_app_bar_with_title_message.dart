import 'package:flutter/material.dart';
import '../molecule/title_message.dart';
import '../token/color_schemes.g.dart';
import '../token/style_by_platform.dart';

class CanvasColorAppBarWithTitleMessage extends StatelessWidget
    with PreferredSizeWidget {
  const CanvasColorAppBarWithTitleMessage({
    Key? key,
    required this.centerTitle,
    required this.title,
    required this.textStyle,
  }) : super(key: key);

  final bool centerTitle;
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0,
      centerTitle: centerTitle,
      title: TitleMessage(
        text: title,
        textStyle: textStyle,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
