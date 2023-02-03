import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/infrastructure/student_repository.dart';
import '../../infrastructure/query_service_repository.dart';
import '../../use_case/actor/student.dart';
import '../../use_case/query_survice/query_service.dart';

final studentUseCase = Provider((ref) => StudentUseCase(StudentRepository()));

final testProvider =
    FutureProvider.family.autoDispose<List<Student>, ClassDocument>(
  (ref, ClassDocument classDocument) async {
    return await QueryServiceUseCase(
      queryService: QueryServiceRepositoryWhichUseFirebase(),
    ).fetchClassInfo(classDocument);
  },
);

final queryService = Provider(
  (ref) => QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ),
);
