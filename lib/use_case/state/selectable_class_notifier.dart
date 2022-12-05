import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/infrastructure/class/fake_class_repository.dart';
import 'package:vantan_connect/infrastructure/class_query_service/class_query_service.dart';
import 'package:vantan_connect/use_case/i_query_service/i_class_query_service.dart';
import '../../domain/class/class.dart';
import 'class_use_case.dart';

class SelectableClassNotifier extends StateNotifier<List<ClassDto>> {
  SelectableClassNotifier(this.classQueryService) : super([]);
  final IClassQueryService classQueryService;

  // void deleteClass(Class classInfo) {
  //   classQueryService.deleteClass(classInfo);
  // }

  void fetchSelectableClass(ClassDto classDto) {
    final classState = classQueryService.fetchSelectableClassInfo(classDto);
    classState.listen((event) => state = event);
  }
}

final selectableClass = StateNotifierProvider(
  (ref) => SelectableClassNotifier(ClassQueryService(testClassDtoList)),
);
