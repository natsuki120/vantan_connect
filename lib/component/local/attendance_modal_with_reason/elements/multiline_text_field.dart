import 'package:flutter/material.dart';
import 'package:vantan_connect/component/shered/single/color.dart';

class MultilineTextField extends StatelessWidget {
  const MultilineTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
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
