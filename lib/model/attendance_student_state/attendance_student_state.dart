import 'package:freezed_annotation/freezed_annotation.dart';
part 'attendance_student_state.freezed.dart';
part 'attendance_student_state.g.dart';

@freezed
class AttendanceStudentState with _$AttendanceStudentState {
  const factory AttendanceStudentState({
    @Default([]) List<Map<String, dynamic>> students,
  }) = _AttendanceStudentState;

  factory AttendanceStudentState.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStudentStateFromJson(json);
}
