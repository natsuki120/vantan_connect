import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_name.freezed.dart';
part 'class_name.g.dart';

@freezed
class ClassName with _$ClassName {
  const factory ClassName({
    @Default('') String name,
  }) = _ClassName;

  factory ClassName.fromJson(Map<String, dynamic> json) =>
      _$ClassNameFromJson(json);
}
