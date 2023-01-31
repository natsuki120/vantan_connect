import 'package:flutter/material.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/select_class_checkbox/elements/checkbox_with_class.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/select_class_checkbox/hooks/use_check.dart';

//FIXME: changeTo Hook
class CheckBoxListState extends StatefulWidget {
  @override
  State<CheckBoxListState> createState() => _CheckBoxListStateState();
}

class _CheckBoxListStateState extends State<CheckBoxListState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: dailyClass
          .map((e) => CheckboxWithClass(
              period: (e['period']),
              className: (e['className']),
              value: e['selected'],
              onChanged: (bool? checkedValue) {
                setState(() {
                  e['selected'] = checkedValue;
                });
                handleSelectedClass(e);
              }))
          .toList(),
    );
  }
}
