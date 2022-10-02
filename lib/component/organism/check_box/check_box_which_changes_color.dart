import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/organism/check_box_element/un_selected_check_box_element_which_has_no_icon.dart';
import 'package:vantan_connect/component/organism/selected_check_box_element.dart';

class CheckBoxWhichChangesColor extends StatefulWidget {
  CheckBoxWhichChangesColor({Key? key}) : super(key: key);

  @override
  State<CheckBoxWhichChangesColor> createState() =>
      _CheckBoxWhichChangesColorState();
}

class _CheckBoxWhichChangesColorState extends State<CheckBoxWhichChangesColor> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? GestureDetector(
            child: SelectedCheckBoxElement(
              text: 'フィルター',
              textStyle: labelLarge(FontWeight.w500, colorScheme.onBackground),
              color: colorScheme.secondaryContainer,
              iconData: Icons.check,
              width: 120,
              height: 32,
            ),
            onTap: () => setState(() => isSelected = !isSelected),
          )
        : GestureDetector(
            child: UnSelectedCheckBoxElementWhichHasNoIcon(
              text: 'フィルター',
              textStyle: labelLarge(FontWeight.w500, colorScheme.onBackground),
              color: colorScheme.background,
              width: 110,
              height: 32,
            ),
            onTap: () => setState(() => isSelected = !isSelected),
          );
  }
}
