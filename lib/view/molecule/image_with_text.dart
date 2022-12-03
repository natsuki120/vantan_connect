import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/atom/main_text.dart';
import '../token/space_box.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.imgUrl,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imgUrl),
            ),
          ),
        ),
        SpaceBox(width: 8.w),
        MainText(text: text, textStyle: textStyle),
      ],
    );
  }
}
