import 'package:freezed_annotation/freezed_annotation.dart';

import '../value/class_name.dart';
part 'class_document.freezed.dart';
part 'class_document.g.dart';

@freezed
class ClassDocument with _$ClassDocument {
  const factory ClassDocument({
    @Default('') String title,
    @Default('') String description,
    @Default(0) int count,
    @Default('') String className,
    @Default('') String day,
  }) = _ClassDocument;

  factory ClassDocument.fromJson(Map<String, dynamic> json) =>
      _$ClassDocumentFromJson(json);
}

abstract class IClassDocumentRepository {
  Stream<List<ClassDocument>> fetchClassDocument(ClassName className);
}
