import 'package:freezed_annotation/freezed_annotation.dart';
part 'teacher.freezed.dart';
part 'teacher.g.dart';

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    @Default('') String id,
    @Default('') String name,
    @Default('') String job,
    @Default('') String profileText,
    @Default('') String attendance,
    @Default(0) int attendedDay,
    @Default('') String accountNumber,
    @Default('') String userImagePath,
    @Default('') String rootCollection,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}

abstract class ITeacherRepository {
  Future<List<Teacher>> fetchTeacherInfo(Teacher teacher);
}
