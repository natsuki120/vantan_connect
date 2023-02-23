import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../../../infrastructure/query_service/query_service_repository.dart';
import '../../../../../../use_case/query_service/query_service.dart';

final fetchAllClassDocumentByDay =
    StreamProvider.family((ref, ClassAndDocument classAndDocument) {
  return QueryServiceUseCase(
          queryService: QueryServiceRepositoryWhichUseFirebase())
      .fetchAllClassDocumentByDay(
          classInfo: classAndDocument.classInfo,
          classDocument: classAndDocument.classDocument);
});
