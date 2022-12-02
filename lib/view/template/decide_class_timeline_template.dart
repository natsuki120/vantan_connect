import 'package:flutter/material.dart';
import 'package:vantan_connect/view/organism/class_card_with_image.dart';

class DecideClassTimelineTemplate extends StatelessWidget {
  const DecideClassTimelineTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [ClassCardWithImage(classInfo: classInfo)],
      ),
    );
  }
}
