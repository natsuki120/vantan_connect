import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/value/class_name.dart';
part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @Default('') String id,
    @Default('') String name,
    @Default('') String job,
    @Default('') String profileText,
    @Default('') String attendance,
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
    //required Student attendanceState
  }) {}
}
//Sample:
//Here: 抽象クラス