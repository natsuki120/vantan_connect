import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/class_student/class_student.dart';
import '../class_document/class_document.dart';
import '../user/user_state.dart';
part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class with _$Class {
  const factory Class({
    @Default('') String name,
    @Default('') String overView,
    @Default(<UserState>[]) List<UserState> teacher,
    @Default('') String targetSchool,
    @Default('') String targetStudent,
    @Default('') String goalPoint,
    @Default('') String endTime,
    @Default(0) int frameCount,
    @Default(<ClassStudent>[]) List<ClassStudent> student,
    @Default('') String startTime,
    @Default('') String announceTime,
    @Default(0) int timeTable,
    @Default(<ClassDocument>[]) List<ClassDocument> document,
    @Default(<String>[]) List<String> studentVoice,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}

abstract class IClassRepository {
  Stream<List<Class>> fetchClassInfoToConfirmDetail();
}
