import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/text/main_text.dart';
import '../molecule/check_box/common_container.dart';
import '../molecule/check_box/check_box_icon.dart';

class SelectedCheckBoxElement extends StatefulWidget {
  SelectedCheckBoxElement({
    super.key,
    required this.text,
    required this.textStyle,
    required this.iconData,
    required this.color,
    required this.width,
    required this.height,
  });

  final String text;
  final TextStyle textStyle;
  final IconData iconData;
  final Color color;
  final double width;
  final double height;

  @override
  State<SelectedCheckBoxElement> createState() =>
      _SelectedCheckBoxElementState();
}

class _SelectedCheckBoxElementState extends State<SelectedCheckBoxElement> {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      width: widget.width,
      height: widget.height,
      color: widget.color,
      child: Row(
        children: [
          Spacer(flex: 2),
          CheckBoxIcon(iconData: widget.iconData),
          Spacer(flex: 1),
          MainText(text: widget.text, textStyle: widget.textStyle),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
