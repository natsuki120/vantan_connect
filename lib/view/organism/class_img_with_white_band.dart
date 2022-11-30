import 'package:flutter/material.dart';
import 'package:vantan_connect/view/molecule/class_img.dart';

class ClassImgWithWhiteBand extends StatelessWidget {
  const ClassImgWithWhiteBand({
    Key? key,
    required this.width,
    required this.height,
    required this.classImgUrl,
    required this.borderRadius,
  }) : super(key: key);

  final double width;
  final double height;
  final String classImgUrl;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.05),
          ],
          stops: [
            0.8,
            1,
          ],
        ).createShader(bounds);
      },
      child: ClassImg(
        classImgUrl: classImgUrl,
        width: width,
        height: height,
        borderRadius: borderRadius,
      ),
    );
  }
}
