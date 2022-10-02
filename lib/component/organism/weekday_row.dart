import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/text/text_that_changes_color_when_pressed.dart';

class WeekdayRow extends StatelessWidget {
  const WeekdayRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextThatChangesColorWhenPressed(text: '月'),
        TextThatChangesColorWhenPressed(text: '火'),
        TextThatChangesColorWhenPressed(text: '水'),
        TextThatChangesColorWhenPressed(text: '木'),
        TextThatChangesColorWhenPressed(text: '金'),
        TextThatChangesColorWhenPressed(text: '土'),
      ],
    );
  }
}
