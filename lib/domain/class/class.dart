import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/user/user_state.dart';
import '../class_document/class_document.dart';
part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class with _$Class {
  const factory Class({
    @Default('') String name,
    @Default('') String classImgUrl,
    @Default('') String overView,
    @Default([]) List<UserState> teacher,
    @Default([]) List<UserState> student,
    @Default('') String targetSchool,
    @Default('') String targetStudent,
    @Default('') String goalPoint,
    @Default([]) List<String> goalRequirements,
    @Default('') String endTime,
    @Default(0) int frameCount,
    @Default('') String startTime,
    @Default('') String announceTime,
    @Default(0) int timeTable,
    @Default(<ClassDocument>[]) List<ClassDocument> document,
    @Default(<String>[]) List<String> studentVoice,
    @Default(false) bool isOnline,
    @Default('') String baseClass,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}

abstract class IClassRepository {
  Stream<List<Class>> fetchClassInfo();
  Stream<List<Class>> fetchBaseClass();
  Stream<List<Class>> fetchSelectableClass(Class baseClass);
}
