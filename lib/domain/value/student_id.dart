import 'package:freezed_annotation/freezed_annotation.dart';
part 'student_id.freezed.dart';

@freezed
class StudentId with _$StudentId {
  const factory StudentId(
    String id,
  ) = _StudentId;
}

class StudentIdConverter implements JsonConverter<StudentId, String> {
  const StudentIdConverter();

  @override
  StudentId fromJson(String studentId) {
    return StudentId(studentId);
  }

  @override
  String toJson(StudentId studentId) {
    return studentId.id;
  }
}
