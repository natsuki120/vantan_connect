import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/infrastructure/class_query_service/class_query_service.dart';
import 'package:vantan_connect/use_case/i_query_service/i_class_query_service.dart';
import 'package:vantan_connect/use_case/state/class_use_case.dart';

class ClassDtoNotifier extends StateNotifier<List<ClassDto>> {
  ClassDtoNotifier(this.classQueryService) : super([]);
  final IClassQueryService classQueryService;

  void fetchMyClassInfo() {
    final classDto = classQueryService.fetchMyClassInfo();
    classDto.listen((event) => state = [...event]);
  }

  void registerMyClass(ClassDto classDto) {
    classQueryService.registerMyClass(classDto);
  }

  void deleteAllClass(List<ClassDto> classDtoList) {
    classQueryService.deleteAllClass(classDtoList);
  }

  void deleteClass(ClassDto classDto) {
    classQueryService.deleteClass(classDto);
  }
}

final classDto = StateNotifierProvider(
  (ref) => ClassDtoNotifier(ClassQueryService(testClassDtoList)),
);
