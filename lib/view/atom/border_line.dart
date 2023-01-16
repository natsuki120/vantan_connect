import 'package:flutter/material.dart';

class BorderLine extends StatelessWidget {
  const BorderLine({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: color),
        ),
      ),
    );
  }
}
