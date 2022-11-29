import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/grey_box.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class TitleAndValuelessBox extends StatelessWidget {
  const TitleAndValuelessBox(
      {Key? key, required this.title, required this.textStyle})
      : super(key: key);

  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleMessage(text: title, textStyle: textStyle),
        SpaceBox(height: 20.h),
        GreyBox(),
        SpaceBox(height: 10.h),
        GreyBox(),
        SpaceBox(height: 10.h),
        GreyBox(),
      ],
    );
  }
}
