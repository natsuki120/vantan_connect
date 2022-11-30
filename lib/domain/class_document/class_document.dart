import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/date_time_converter.dart';
import '../user/user_state.dart';
part 'class_document.freezed.dart';
part 'class_document.g.dart';

@freezed
class ClassDocument with _$ClassDocument {
  const factory ClassDocument({
    @Default('') String title,
    @Default('') String description,
    @Default(0) int count,
    @DateTimeConverter() DateTime? day,
  }) = _ClassDocument;

  factory ClassDocument.fromJson(Map<String, dynamic> json) =>
      _$ClassDocumentFromJson(json);
}
