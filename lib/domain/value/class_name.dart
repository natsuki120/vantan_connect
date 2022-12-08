import 'package:freezed_annotation/freezed_annotation.dart';

class ClassName {
  ClassName(this.value);
  final String value;
}

class ClassNameConverter extends JsonConverter<ClassName, String> {
  const ClassNameConverter();

  @override
  ClassName fromJson(String name) {
    return ClassName(name);
  }

  @override
  String toJson(ClassName className) {
    return className.value;
  }
}
