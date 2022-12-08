import 'package:freezed_annotation/freezed_annotation.dart';
import '../class_document/class_document.dart';
part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class with _$Class {
  const factory Class({
    @Default('') String id,
    @Default('') String name,
    @Default('') String classImgUrl,
    @Default('') String overView,
    @Default([]) List<Map<String, dynamic>> teacher,
    @Default([]) List<Map<String, dynamic>> student,
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
    @Default(<String>[]) List<String> studentVoice,
    @Default(false) bool isOnline,
    @Default('') String baseClass,
    @Default([]) List<Map<String, dynamic>> document,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}

abstract class IClassRepository {
  Stream<List<Class>> fetchClassInfo();
  Stream<List<Class>> fetchBaseClass();
  Stream<List<Class>> fetchSelectableClass(Class baseClass);
  Stream<List<ClassDocument>> fetchClassDocument(Class baseClass);
  void registerMyClass(Class classInfo);
  void deleteAllClass(List<Class> classList);
  void deleteClass(Class classInfo);
}
