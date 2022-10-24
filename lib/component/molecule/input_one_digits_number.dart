import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputOneDigitsNumber extends StatelessWidget {
  const InputOneDigitsNumber(
      {Key? key, required this.nextFocus, required this.textEditingController})
      : super(key: key);

  final bool nextFocus;
  final TextEditingController textEditingController;

  void changeFocus(
    String text,
    int maxLength,
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
      width: 53,
      child: TextFormField(
        controller: textEditingController,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (text) {
          changeFocus(text, 1, context);
        },
      ),
    );
  }
}
