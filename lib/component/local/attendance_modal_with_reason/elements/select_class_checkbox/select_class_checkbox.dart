import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/select_class_checkbox/elements/checkbox_with_class.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/select_class_checkbox/hooks/use_check.dart';

class CheckBoxListState extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var _checkBoxState = useState<bool?>(false);
    return Column(
      children: dailyClass
          .map((e) => CheckboxWithClass(
                period: (e['period']),
                className: (e['className']),
                value: e['selected'],
                onChanged: (bool? checkedValue) {
                  _checkBoxState.value = e['selected'];
                  _checkBoxState.value = checkedValue;
                  e['selected'] = _checkBoxState.value;
                  handleSelectedClass(e);
                },
              ))
          .toList(),
    );
  }
}
