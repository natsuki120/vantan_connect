import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import 'package:vantan_connect/component/shered/single/radio_button.dart';

class RadioButtonWithAttendanceStatus extends HookWidget {
  RadioButtonWithAttendanceStatus({
    super.key,
  });
  late final _attendanceState = useState<AttendanceState?>(null);
  @override
  Widget build(BuildContext context) {
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
