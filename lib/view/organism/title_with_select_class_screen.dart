import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/const_width_and_height.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../token/style_by_platform.dart';

class TitleAndSelectClassScreen extends StatelessWidget {
  TitleAndSelectClassScreen({
    Key? key,
    required this.children,
    required this.title,
  }) : super(key: key);

  final List<Widget> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: colorScheme.onBackground,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalSpace),
              child: TitleMessage(
                text: title,
                textStyle: title1Bold(colorScheme.onBackground),
              ),
            ),
            Column(children: children)
          ],
        ),
      ),
    );
  }
}
