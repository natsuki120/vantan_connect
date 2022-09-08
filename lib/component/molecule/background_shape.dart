import 'package:flutter/material.dart';

class BackgroundShape extends StatelessWidget {
  const BackgroundShape({super.key, required this.color, required this.radius});

  final Color color;
  final Radius radius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        // TODO デザインが少し違う。端末サイズを超過するcontainerを許容するロジックを考える
        borderRadius: BorderRadius.vertical(top: radius),
      ),
    );
  }
}
