import 'package:freezed_annotation/freezed_annotation.dart';

class ClassStudent {
  ClassStudent(this.id);
  final String id;
}

class ClassStudentConverter implements JsonConverter<ClassStudent, String> {
  const ClassStudentConverter();

  @override
  ClassStudent fromJson(String json) {
    return ClassStudent(json);
  }

  @override
  String toJson(ClassStudent classStudent) {
    return classStudent.id;
  }
}
