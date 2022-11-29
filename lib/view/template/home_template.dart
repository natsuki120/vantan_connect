import 'package:flutter/material.dart';
import 'package:vantan_connect/view/organism/canvas_color_app_bar_with_title_message.dart';
import 'package:vantan_connect/view/organism/guide_to_select_new_class.dart';
import 'package:vantan_connect/view/template/select_class_template.dart';

class HomeTemplate extends StatelessWidget {
  const HomeTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CanvasColorAppBarWithTitleMessage(),
      body: Center(
        child: GuideToSelectNewClass(pageRoute: SelectClassTemplate()),
      ),
    );
  }
}
