import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class ClassTeacher {
  ClassTeacher(this.id);
  final String id;
}

class ClassTeacherConverter implements JsonConverter<ClassTeacher, String> {
  const ClassTeacherConverter();

  @override
  ClassTeacher fromJson(String json) {
    return ClassTeacher(json);
  }

  @override
  String toJson(ClassTeacher classTeacher) {
    return classTeacher.id;
  }
}
