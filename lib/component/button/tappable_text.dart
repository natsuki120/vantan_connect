import 'package:flutter/material.dart';
import '../atom/color_schemes.g.dart';

class TappableText extends StatelessWidget {
  const TappableText({
    super.key,
    required this.text,
    required this.nextPage,
  });

  final String text;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: SizedBox(
          width: double.infinity,
          child: Text(
            text,
            style: TextStyle(
              color: colorScheme!.onBackground,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute<Widget>(
              builder: (_) => nextPage,
            ),
          );
        },
      ),
    );
  }
}
