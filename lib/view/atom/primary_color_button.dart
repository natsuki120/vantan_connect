import 'package:flutter/material.dart';
import '../atom/color_schemes.g.dart';

class PrimaryColorButton extends StatelessWidget {
  const PrimaryColorButton({
    super.key,
    required this.text,
    required this.nextPage,
  });

  final String text;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: colorScheme.onPrimary,
          backgroundColor: colorScheme.primary,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<Widget>(builder: (_) => nextPage),
          );
        },
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
