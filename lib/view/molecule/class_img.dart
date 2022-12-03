import 'package:flutter/material.dart';
import 'package:vantan_connect/view/atom/original_image.dart';

class ClassImg extends StatelessWidget {
  const ClassImg({
    Key? key,
    required this.classImgUrl,
    required this.width,
    required this.height,
    required this.borderRadius,
  }) : super(key: key);

  final double width;
  final double height;
  final String classImgUrl;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: OriginalImage(url: classImgUrl),
      ),
    );
  }
}
