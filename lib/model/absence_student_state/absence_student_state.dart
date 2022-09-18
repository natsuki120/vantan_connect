import 'package:freezed_annotation/freezed_annotation.dart';
part 'absence_student_state.freezed.dart';
part 'absence_student_state.g.dart';

@freezed
class AbsenceStudentState with _$AbsenceStudentState {
  const factory AbsenceStudentState({
    @Default([]) List<Map<String, dynamic>> students,
  }) = _AbsenceStudentState;

  factory AbsenceStudentState.fromJson(Map<String, dynamic> json) =>
      _$AbsenceStudentStateFromJson(json);
}
