import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class ImageAndUserInfo extends StatelessWidget {
  const ImageAndUserInfo({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(),
        SpaceBox(width: 16.w),
        widget,
      ],
    );
  }
}
