import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import 'package:vantan_connect/component/molecule/un_selected_radio_button/radio_button_border.dart';
import 'package:vantan_connect/component/molecule/un_selected_radio_button/radio_button_icon.dart';
import 'package:vantan_connect/component/template/send_reason_modal_template.dart';
import 'package:vantan_connect/const/space_box.dart';

class RadioButton extends StatefulWidget {
  RadioButton({
    super.key,
    required this.text,
    required this.isSelected,
  });

  final String text;

  bool isSelected = false;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.isSelected)
          RadioButtonBorder(
            color: colorScheme!.secondaryContainer,
            borderColor: colorScheme!.secondaryContainer,
            child: Row(
              children: [
                SpaceBox(width: 10),
                const RadioButtonIcon(iconData: Icons.radio_button_checked),
                SpaceBox(width: 10),
                MainText(
                  text: widget.text,
                  textStyle: bodyLarge(
                    FontWeight.w300,
                    colorScheme!.onSurface,
                  ),
                ),
              ],
            ),
          )
        else
          RadioButtonBorder(
            color: colorScheme!.background,
            borderColor: colorScheme!.onBackground.withOpacity(0.8),
            child: Row(
              children: [
                SpaceBox(width: 10),
                RadioButtonIcon(iconData: Icons.radio_button_unchecked),
                SpaceBox(width: 10),
                MainText(
                  text: widget.text,
                  textStyle: bodyLarge(
                    FontWeight.w300,
                    colorScheme!.onSurface,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
