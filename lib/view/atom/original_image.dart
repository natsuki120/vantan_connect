import 'package:flutter/material.dart';

class OriginalImage extends StatelessWidget {
  const OriginalImage({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(url, fit: BoxFit.cover);
  }
}
