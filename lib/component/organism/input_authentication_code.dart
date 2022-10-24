import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/input_one_digits_number.dart';

class InputAuthenticationCode extends StatelessWidget {
  const InputAuthenticationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
        InputOneDigitsNumber(
            nextFocus: true, textEditingController: TextEditingController()),
      ],
    );
  }
}
