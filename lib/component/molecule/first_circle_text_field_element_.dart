import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstCircleTextField extends StatelessWidget {
  const FirstCircleTextField({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.color,
  });

  final double width;
  final double height;
  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Text('+81'),
      ),
    );
  }
}
