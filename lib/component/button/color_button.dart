import 'package:flutter/material.dart';
import '../../const/color_schemes.g.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    required this.text,
    required this.padding,
    required this.nextPage,
  });

  final String text;
  final EdgeInsets padding;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: colorScheme!.primary,
            onPrimary: colorScheme!.onPrimary,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute<Widget>(
                builder: (_) => nextPage,
              ),
            );
          },
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
