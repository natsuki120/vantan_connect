import 'package:freezed_annotation/freezed_annotation.dart';
part 'student_id.freezed.dart';
part 'student_id.g.dart';

@freezed
class StudentId with _$StudentId {
  const factory StudentId({
    @Default('') String id,
  }) = _StudentId;

  factory StudentId.fromJson(Map<String, dynamic> json) =>
      _$StudentIdFromJson(json);
}
