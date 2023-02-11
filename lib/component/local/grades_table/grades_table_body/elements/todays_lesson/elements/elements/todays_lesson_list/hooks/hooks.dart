import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/query_service_repository.dart';
import 'package:vantan_connect/use_case/query_service/query_service.dart';

final fetchClassListInAPClass = StreamProvider(
  (ref) {
    return QueryServiceUseCase(
      queryService: QueryServiceRepositoryWhichUseFirebase(),
    ).fetchClassListInAPClass();
  },
);
