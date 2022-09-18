import 'package:freezed_annotation/freezed_annotation.dart';
part 'late_student_state.freezed.dart';
part 'late_student_state.g.dart';

@freezed
class LateStudentState with _$LateStudentState {
  const factory LateStudentState({
    @Default([]) List<Map<String, dynamic>> students,
  }) = _LateStudentState;

  factory LateStudentState.fromJson(Map<String, dynamic> json) =>
      _$LateStudentStateFromJson(json);
}
