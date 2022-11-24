import 'package:freezed_annotation/freezed_annotation.dart';
import '../user/user_state.dart';
part 'class_document.freezed.dart';
part 'class_document.g.dart';

@freezed
class ClassDocument with _$ClassDocument {
  const factory ClassDocument({
    @Default('') String name,
  }) = _ClassDocument;

  factory ClassDocument.fromJson(Map<String, dynamic> json) =>
      _$ClassDocumentFromJson(json);
}
