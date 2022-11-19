import 'package:flutter/material.dart';

class IndicatorElement extends StatelessWidget {
  const IndicatorElement({
    super.key,
    required this.percent,
    required this.width,
  });

  final double percent;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: LinearProgressIndicator(
          value: percent,
          valueColor: const AlwaysStoppedAnimation<Color>(
            Color.fromRGBO(0, 100, 148, 1),
          ),
        ),
      ),
    );
  }
}
