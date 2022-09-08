import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/component/atom/common/primary_color_button.dart
import '../../../const/color_schemes.g.dart';
=======

import '../atom/color_schemes.g.dart';
>>>>>>> a341bdf (✨ create profile page and function edit profile):lib/component/molecule/primary_color_button.dart

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
          primary: colorScheme!.primary,
          onPrimary: colorScheme!.onPrimary,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
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
