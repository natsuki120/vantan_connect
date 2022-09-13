import 'package:flutter/material.dart';

class BackgroundShape extends StatelessWidget {
  const BackgroundShape({
    super.key,
    required this.color,
    required this.radius,
    required this.bottom,
    required this.left,
    required this.right,
  });

  final Color color;
  final Radius radius;
  final double bottom;
  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: size.height * 0.4,
        decoration: BoxDecoration(
          color: color,
          // TODO デザインが少し違う。端末サイズを超過するcontainerを許容するロジックを考える
          borderRadius: BorderRadius.vertical(top: radius),
        ),
      ),
    );
  }
}
