import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';

import '../../class/class.dart';
part 'class_and_document.freezed.dart';
part 'class_and_document.g.dart';

@freezed
class ClassAndDocument with _$ClassAndDocument {
  const factory ClassAndDocument({
    @Default(Class()) Class classInfo,
    @Default(ClassDocument()) ClassDocument classDocument,
  }) = _ClassAndDocument;

  factory ClassAndDocument.fromJson(Map<String, dynamic> json) =>
      _$ClassAndDocumentFromJson(json);
}
