import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/circle_text_field_element.dart';
import 'package:vantan_connect/component/molecule/first_circle_text_field_element_.dart';

class CircleTextField extends StatelessWidget {
  const CircleTextField({
    super.key,
    required this.width,
    required this.height,
    required this.maxLength,
    required this.radius,
    required this.color,
    required this.firstCNTL,
    required this.secondCNTL,
    required this.thirdCNTL,
    required this.firstBoxWidth,
    required this.firstNextFocus,
    required this.secondNextFocus,
    required this.thirdNextFocus,
    required this.fistMaxLength,
  });

  final double firstBoxWidth;
  final double width;
  final double height;
  final int fistMaxLength;
  final int maxLength;
  final double radius;
  final Color color;
  final bool firstNextFocus;
  final bool secondNextFocus;
  final bool thirdNextFocus;
  final TextEditingController firstCNTL;
  final TextEditingController secondCNTL;
  final TextEditingController thirdCNTL;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FirstCircleTextField(
          width: firstBoxWidth,
          height: height,
          radius: radius,
          color: color,
        ),
        CircleTextFieldElement(
          width: width,
          height: height,
          controller: firstCNTL,
          maxLength: fistMaxLength,
          nextFocus: firstNextFocus,
          color: color,
          radius: radius,
        ),
        const Text('-'),
        CircleTextFieldElement(
          width: width,
          height: height,
          controller: secondCNTL,
          maxLength: maxLength,
          nextFocus: secondNextFocus,
          color: color,
          radius: radius,
        ),
        const Text('-'),
        CircleTextFieldElement(
          width: width,
          height: height,
          controller: thirdCNTL,
          maxLength: maxLength,
          nextFocus: thirdNextFocus,
          color: color,
          radius: radius,
        ),
      ],
    );
  }
}
