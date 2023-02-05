import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/class/class.dart';

import '../student/student.dart';
part 'student_attendance.freezed.dart';
part 'student_attendance.g.dart';

@freezed
class StudentAttendance with _$StudentAttendance {
  const factory StudentAttendance({
    @Default(Student()) Student student,
    @Default(Class()) Class classInfo,
  }) = _StudentAttendance;

  factory StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceFromJson(json);
}
