import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/organism/check_box_element/un_selected_check_box_element_which_has_no_icon.dart';
import 'package:vantan_connect/component/organism/selected_check_box_element.dart';

class CustomRadioWhichChangesColor extends StatefulWidget {
  CustomRadioWhichChangesColor(
    this.selectedText, {
    Key? key,
    required this.text,
  }) : super(key: key);

  String? selectedText;
  final String text;

  @override
  State<CustomRadioWhichChangesColor> createState() =>
      _CustomRadioWhichChangesColorState();
}

class _CustomRadioWhichChangesColorState
    extends State<CustomRadioWhichChangesColor> {
  @override
  Widget build(BuildContext context) {
    return widget.selectedText == widget.text
        ? GestureDetector(
            child: SelectedCheckBoxElement(
              text: widget.text,
              textStyle: labelLarge(FontWeight.w500, colorScheme.onBackground),
              color: colorScheme.secondaryContainer,
              iconData: Icons.check,
              width: 120,
              height: 32,
            ),
          )
        : GestureDetector(
            child: UnSelectedCheckBoxElementWhichHasNoIcon(
              text: widget.text,
              textStyle: labelLarge(FontWeight.w500, colorScheme.onBackground),
              color: colorScheme.background,
              width: 110,
              height: 32,
            ),
          );
  }
}
