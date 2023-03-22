import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/radio_button/radio_button.dart';
import '../../../../shared/single/text_style/text_style.dart';
import 'hooks/useAttendanceState.dart';

class RadioButtonWithAttendanceStatus extends HookConsumerWidget {
  RadioButtonWithAttendanceStatus({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _attendanceState = useState<AttendanceState?>(null);
    return Column(
      children: [
        RadioButtonWithText(
          text: AttendanceState.tardy.displayState,
          textStyle: callOutRegular(black),
          activeColor: primary,
          value: AttendanceState.tardy,
          groupValue: _attendanceState.value,
          onChanged: (value) {
            _attendanceState.value = value;
            ref
                .watch(attendanceStateProvider.notifier)
                .update((state) => state = value);
            handleAttendanceState(value);
          },
        ),
        RadioButtonWithText(
          text: AttendanceState.absence.displayState,
          textStyle: callOutRegular(black),
          activeColor: primary,
          value: AttendanceState.absence,
          groupValue: _attendanceState.value,
          onChanged: (value) {
            _attendanceState.value = value;
            ref
                .watch(attendanceStateProvider.notifier)
                .update((state) => state = value);
            handleAttendanceState(value);
          },
        ),
        RadioButtonWithText(
          text: AttendanceState.other.displayState,
          textStyle: callOutRegular(black),
          activeColor: primary,
          value: AttendanceState.other,
          groupValue: _attendanceState.value,
          onChanged: (value) {
            _attendanceState.value = value;
            ref
                .watch(attendanceStateProvider.notifier)
                .update((state) => state = value);
            handleAttendanceState(value);
          },
        ),
      ],
    );
  }
}
