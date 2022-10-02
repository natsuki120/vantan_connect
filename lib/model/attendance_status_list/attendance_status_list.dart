import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/model/attendance_status_state/attendance_status_state.dart';
part 'attendance_status_list.freezed.dart';
part 'attendance_status_list.g.dart';

@freezed
class AttendanceStatusStateList with _$AttendanceStatusStateList {
  const factory AttendanceStatusStateList({
    @Default(<AttendanceStatusState>[])
        List<AttendanceStatusState> attendanceStatusList,
  }) = _AttendanceStatusStateList;

  factory AttendanceStatusStateList.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusStateListFromJson(json);
}
