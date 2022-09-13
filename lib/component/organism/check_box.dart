import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/selected_check_box_element.dart';
import 'package:vantan_connect/component/molecule/un_selected_check_box_element.dart';
import '../molecule/style_by_platform.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key, required this.text});
  final String text;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? GestureDetector(
            child: SelectedCheckBoxElement(
              text: widget.text,
              textStyle: bodyLarge(FontWeight.w300, colorScheme!.onSurface),
            ),
            onTap: () => setState(() => isSelected = !isSelected),
          )
        : GestureDetector(
            child: UnSelectedCheckBox(
              text: widget.text,
              textStyle: bodyLarge(FontWeight.w300, colorScheme!.onSurface),
            ),
            onTap: () => setState(() => isSelected = !isSelected),
          );
  }
}
