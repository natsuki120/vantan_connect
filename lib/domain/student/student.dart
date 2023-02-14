import 'package:freezed_annotation/freezed_annotation.dart';

import '../class/class.dart';
import '/component/local/attendance_modal_with_reason/elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import '../value/class_name.dart';
part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @Default('') String id,
    @Default('') String name,
    @Default('') String job,
    @Default('') String course,
    @Default('') String profileText,
    @Default(false) bool attended,
    @Default(false) bool noAttended,
    @Default(false) bool late,
    @Default(false) bool other,
    @Default(0) int attendedDay,
    @Default('') String accountNumber,
    @Default('') String userImagePath,
    @Default('') String rootCollection,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

abstract class IStudentRepository {
  // TODO ClassNameをLessonNameに変更
  void attendanceLesson(
      {required Student student, required ClassName className}) {}
  void setAttendanceState({
    required Student student,
    required ClassName className,
    required AttendanceState? attendanceState,
    required Class classInfo,
    required String? reasonText,
  }) {}
}
