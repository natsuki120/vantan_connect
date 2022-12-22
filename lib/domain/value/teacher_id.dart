import 'package:freezed_annotation/freezed_annotation.dart';
part 'teacher_id.freezed.dart';
part 'teacher_id.g.dart';

@freezed
class TeacherId with _$TeacherId {
  const factory TeacherId({
    @Default('') String id,
  }) = _TeacherId;

  factory TeacherId.fromJson(Map<String, dynamic> json) =>
      _$TeacherIdFromJson(json);
}
