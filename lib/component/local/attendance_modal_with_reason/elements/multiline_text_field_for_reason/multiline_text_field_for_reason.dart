import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vantan_connect/component/shared/token/color/color.dart';

import 'hooks/use_reason_text.dart';

class MultilineTextFieldForReason extends HookWidget {
  MultilineTextFieldForReason({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = useTextEditingController();
    return TextField(
      keyboardType: TextInputType.multiline,
      controller: myController,
      onChanged: ((text) {
        final inputText = myController.text;
        handleReasonText(inputText);
      }),
      maxLines: 4,
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: borderMidEmphasis,
        ),
      )),
    );
  }
}
