import 'package:flutter/material.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/select_class_checkbox/elements/checkbox_with_class.dart';

//FIXME: changeTO Hook
class CheckBoxListState extends StatefulWidget {
  @override
  State<CheckBoxListState> createState() => _CheckBoxListStateState();
}

class _CheckBoxListStateState extends State<CheckBoxListState> {
  final List<Map<String, dynamic>> dailyClass = [
    {'period': '1限', 'className': 'UI/UX', 'selected': false},
    {'period': '2限', 'className': 'UI/UX', 'selected': false},
    {'period': '3限', 'className': 'AWSプラクティショナー', 'selected': false},
    {'period': '4限', 'className': 'AWSプラクティショナー', 'selected': false},
    {'period': '5限', 'className': 'マーケティング', 'selected': false},
    {'period': '6限', 'className': 'マーケティング', 'selected': false},
  ];

  final List<int> _selectedClass = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: dailyClass
            .map((e) => CheckboxWithClass(
                period: (e['period']),
                className: (e['className']),
                value: e['selected'],
                onChanged: (bool? checkedValue) {
                  setState(() {
                    e['selected'] = checkedValue;
                  });
                }))
            .toList(),
      ),
    );
  }
}
