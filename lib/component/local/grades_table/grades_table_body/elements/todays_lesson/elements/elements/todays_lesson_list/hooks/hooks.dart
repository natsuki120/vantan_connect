import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/infrastructure/query_service/query_service_repository.dart';
import 'package:vantan_connect/use_case/query_service/query_service.dart';

final fetchClassListInCClass = StreamProvider(
  (ref) {
    return QueryServiceUseCase(
      queryService: QueryServiceRepositoryWhichUseFirebase(),
    ).fetchClassListInCClass();
  },
);

final today = FutureProvider((ref) => ClassDocument(day: '2月16日'));
