import 'package:freezed_annotation/freezed_annotation.dart';
part 'attendance_status_state.freezed.dart';
part 'attendance_status_state.g.dart';

@freezed
class AttendanceStatusState with _$AttendanceStatusState {
  const factory AttendanceStatusState({
    @Default('') String name,
    @Default('') String attendance,
    @Default('') String recordTime,
    @Default('') String reason,
  }) = _AttendanceStatusState;

  factory AttendanceStatusState.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusStateFromJson(json);
}
