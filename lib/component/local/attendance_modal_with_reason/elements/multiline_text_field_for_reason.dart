import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vantan_connect/component/shered/single/color.dart';

class MultilineTextFieldForReason extends HookWidget {
  MultilineTextFieldForReason({super.key});

  final myController = useTextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      controller: myController,
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
