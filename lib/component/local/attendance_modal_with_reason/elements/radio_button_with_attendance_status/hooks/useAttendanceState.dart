import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AttendanceState {
  tardy('遅刻'),
  absence('欠席'),
  other('その他(公欠を除く)');

  final String displayState;
  const AttendanceState(this.displayState);
}

AttendanceState selectedAttendanceState = AttendanceState.absence;

void handleAttendanceState(AttendanceState attendanceState) {
  selectedAttendanceState = attendanceState;
}

final attendanceStateProvider = StateProvider((ref) => AttendanceState.absence);
