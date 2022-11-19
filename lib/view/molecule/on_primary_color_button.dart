import 'package:flutter/material.dart';
import '../atom/color_schemes.g.dart';

class OnPrimaryColorButton extends StatelessWidget {
  const OnPrimaryColorButton({
    super.key,
    required this.text,
    required this.callback,
    required this.child,
  });

  final String text;
  final GestureTapCallback callback;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          backgroundColor: colorScheme.onPrimary,
        ),
        onPressed: callback,
        child: child,
      ),
    );
  }
}
