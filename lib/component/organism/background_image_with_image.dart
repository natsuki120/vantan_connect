import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/background_shape.dart';
import 'package:vantan_connect/component/molecule/image_from_asset.dart';

class BackgroundImageWithShape extends StatelessWidget {
  const BackgroundImageWithShape({
    super.key,
    required this.imagePath,
    required this.color,
    required this.radius,
  });

  final Color color;
  final Radius radius;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundShape(color: color, radius: radius),
        ImageFromAsset(imagePath: imagePath),
      ],
    );
  }
}
