import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/teacher/teacher.dart';
import '../class_document/class_document.dart';
import '../studnet/student.dart';
part 'class_dto.freezed.dart';
part 'class_dto.g.dart';

@freezed
class ClassDto with _$ClassDto {
  @JsonSerializable(explicitToJson: true)
  const factory ClassDto({
    @Default('') String id,
    Class? classInfo,
    AttendanceBook? attendanceBook,
    List<Teacher>? teacher,
    List<Student>? student,
    List<ClassDocument>? document,
  }) = _ClassDto;

  factory ClassDto.fromJson(Map<String, dynamic> json) =>
      _$ClassDtoFromJson(json);
}
