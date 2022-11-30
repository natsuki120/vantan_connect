import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class ImageAndUserInfo extends StatelessWidget {
  const ImageAndUserInfo({Key? key, required this.widget, required this.url})
      : super(key: key);

  final Widget widget;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(url),
            ),
          ),
        ),
        SpaceBox(width: 8.w),
        widget,
      ],
    );
  }
}
