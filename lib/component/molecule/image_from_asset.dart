import 'package:flutter/material.dart';

class ImageFromAsset extends StatelessWidget {
  const ImageFromAsset({
    super.key,
    required this.imagePath,
    required this.bottom,
    required this.left,
  });

  final String imagePath;
  final int bottom;
  final int left;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 200, left: 80),
      child: Image.asset(imagePath),
    );
  }
}
