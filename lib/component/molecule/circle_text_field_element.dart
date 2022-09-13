import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CircleTextFieldElement extends StatelessWidget {
  const CircleTextFieldElement({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
    required this.maxLength,
    required this.nextFocus,
    required this.color,
    required this.radius,
  });

  final double width;
  final double height;
  final TextEditingController controller;
  final int maxLength;
  final double radius;
  final Color color;
  final bool nextFocus;

  void changeFocus(
    String text,
    BuildContext context,
  ) {
    if (text.length == maxLength) {
      nextFocus == true
          ? FocusScope.of(context).nextFocus()
          : FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(
              color: color,
            ),
          ),
        ),
        onChanged: (text) {
          changeFocus(text, context);
        },
      ),
    );
  }
}
