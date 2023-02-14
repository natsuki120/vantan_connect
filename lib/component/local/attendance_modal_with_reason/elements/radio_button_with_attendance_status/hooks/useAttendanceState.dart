enum AttendanceState {
  tardy('遅刻'),
  absence('欠席'),
  other('その他(公欠を除く)');

  final String displayState;
  const AttendanceState(this.displayState);
}

AttendanceState? selectedAttendanceState;

void handleAttendanceState(AttendanceState? attendanceState) {
  selectedAttendanceState = attendanceState;
}
