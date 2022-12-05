import 'package:freezed_annotation/freezed_annotation.dart';
import '../studnet/student.dart';
part 'class_document.freezed.dart';
part 'class_document.g.dart';

@freezed
class ClassDocument with _$ClassDocument {
  @JsonSerializable(explicitToJson: true)
  const factory ClassDocument({
    @Default('') String title,
    @Default('') String description,
    @Default(0) int count,
  }) = _ClassDocument;

  factory ClassDocument.fromJson(Map<String, dynamic> json) =>
      _$ClassDocumentFromJson(json);
}
