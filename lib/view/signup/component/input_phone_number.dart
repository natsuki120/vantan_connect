import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vantan_connect/const/space_box.dart';

TextEditingController firstPhoneController = TextEditingController();
TextEditingController secondPhoneController = TextEditingController();
TextEditingController thirdPhoneController = TextEditingController();

class InputPhoneNumber extends StatelessWidget {
  InputPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // TODO　一番最初のやつは国番号を入れるので別に分ける
        Container(
          width: 62,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(133, 115, 115, 1)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('+81'),
        ),
        InputPhoneNumberPart(
          width: 80,
          maxLength: 3,
          nextFocus: true,
          controller: firstPhoneController,
        ),
        const Text('-'),
        InputPhoneNumberPart(
          width: 80,
          maxLength: 4,
          nextFocus: true,
          controller: secondPhoneController,
        ),
        Text('-'),

        InputPhoneNumberPart(
          width: 80,
          maxLength: 4,
          nextFocus: false,
          controller: thirdPhoneController,
        ),
      ],
    );
  }
}

class InputPhoneNumberPart extends StatelessWidget {
  const InputPhoneNumberPart({
    super.key,
    required this.width,
    required this.maxLength,
    required this.nextFocus,
    required this.controller,
  });

  final double width;
  final int maxLength;
  final bool nextFocus;
  final TextEditingController controller;

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
      height: 50,
      child: TextFormField(
        controller: controller,
        inputFormatters: [LengthLimitingTextInputFormatter(4)],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromRGBO(133, 115, 115, 1),
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
