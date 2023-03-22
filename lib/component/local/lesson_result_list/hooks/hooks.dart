import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/use_case/query_service/query_service.dart';
import '../../../../infrastructure/query_service/query_service_repository.dart';

final fetchClassDayWhichWasHeld = StreamProvider.family(
  (ref, Class classInfo) => QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ).fetchClassDayWhichWasHeld(
    course: 'c_class',
    className: classInfo.name,
  ),
);
