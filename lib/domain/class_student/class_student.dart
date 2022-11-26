import 'package:freezed_annotation/freezed_annotation.dart';
import '../value/student_id.dart';
part 'class_student.freezed.dart';
part 'class_student.g.dart';

@freezed
class ClassStudent with _$ClassStudent {
  const factory ClassStudent({
    @StudentIdConverter() required StudentId id,
  }) = _ClassStudent;

  factory ClassStudent.fromJson(Map<String, dynamic> json) =>
      _$ClassStudentFromJson(json);
}
