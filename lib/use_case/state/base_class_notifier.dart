import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/infrastructure/class_query_service/class_query_service.dart';
import 'package:vantan_connect/use_case/i_query_service/i_class_query_service.dart';
import 'class_use_case.dart';

class BaseClassNotifier extends StateNotifier<List<ClassDto>> {
  BaseClassNotifier(this.classQueryService) : super([]);
  final IClassQueryService classQueryService;

  void fetchBaseClass() {
    final classState = classQueryService.fetchBaseClassInfo();
    classState.listen((event) => state = event);
  }
}

final baseClass = StateNotifierProvider.autoDispose(
  (ref) => BaseClassNotifier(ClassQueryService(testClassDtoList)),
);
