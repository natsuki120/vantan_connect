import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/value/student_id.dart';
import 'package:vantan_connect/domain/value/teacher_id.dart';
part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    @Default('') String id,
    @Default('') String name,
    @Default('') String classImgUrl,
    @Default('') String overView,
    @Default([]) List<StudentId> studentIdList,
    @Default([]) List<TeacherId> teacherIdList,
    @Default('') String targetSchool,
    @Default('') String targetStudent,
    @Default('') String goalPoint,
    @Default([]) List<String> goalRequirements,
    @Default('') String endTime,
    @Default(0) int frameCount,
    @Default('') String startTime,
    @Default('') String announceTime,
    @Default(0) int timeTable,
    @Default([]) List<String> documentId,
    @Default(false) bool isOnline,
    @Default('') String baseClass,
    @Default([]) List<Map<String, dynamic>> document,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}
