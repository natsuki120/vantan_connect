import 'package:flutter/material.dart';

class ImageFromAsset extends StatelessWidget {
  const ImageFromAsset({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/women.png');
  }
}
