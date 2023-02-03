import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../shared/single/radio_button.dart';
import 'hooks/useAttendanceState.dart';

class RadioButtonWithAttendanceStatus extends HookWidget {
  RadioButtonWithAttendanceStatus({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final _attendanceState = useState<AttendanceState?>(null);
    return Column(
      children: [
        RadioButtonWithText(
          text: AttendanceState.tardy.displayState,
          value: AttendanceState.tardy,
          groupValue: _attendanceState.value,
          onChanged: (value) {
            _attendanceState.value = value;
            handleAttendanceState(value);
          },
        ),
        RadioButtonWithText(
          text: AttendanceState.absence.displayState,
          value: AttendanceState.absence,
          groupValue: _attendanceState.value,
          onChanged: (value) {
            _attendanceState.value = value;
            handleAttendanceState(value);
          },
        ),
        RadioButtonWithText(
          text: AttendanceState.other.displayState,
          value: AttendanceState.other,
          groupValue: _attendanceState.value,
          onChanged: (value) {
            _attendanceState.value = value;
            handleAttendanceState(value);
          },
        ),
      ],
    );
  }
}
