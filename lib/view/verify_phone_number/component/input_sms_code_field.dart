import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../service/sign_in_service.dart';

class InputSmsCodeField extends StatelessWidget {
  const InputSmsCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InputSmsCodeFieldItem(
          nextFocus: true,
          textEditingController: firstController,
        ),
        InputSmsCodeFieldItem(
          nextFocus: true,
          textEditingController: secondController,
        ),
        InputSmsCodeFieldItem(
          nextFocus: true,
          textEditingController: thirdController,
        ),
        InputSmsCodeFieldItem(
          nextFocus: true,
          textEditingController: forthController,
        ),
        InputSmsCodeFieldItem(
          nextFocus: true,
          textEditingController: fifthController,
        ),
        InputSmsCodeFieldItem(
          nextFocus: false,
          textEditingController: sixthController,
        ),
      ],
    );
  }
}

class InputSmsCodeFieldItem extends StatelessWidget {
  const InputSmsCodeFieldItem({
    super.key,
    required this.nextFocus,
    required this.textEditingController,
  });

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
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
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
      ),
    );
  }
}
