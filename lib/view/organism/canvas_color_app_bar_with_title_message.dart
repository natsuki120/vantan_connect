import 'package:flutter/material.dart';
import '../molecule/title_message.dart';
import '../token/color_schemes.g.dart';
import '../token/style_by_platform.dart';

class CanvasColorAppBarWithTitleMessage extends StatelessWidget
    with PreferredSizeWidget {
  const CanvasColorAppBarWithTitleMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0,
      centerTitle: false,
      title: TitleMessage(
        text: 'スケジュール',
        textStyle: header(colorScheme.onBackground),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
