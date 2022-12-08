import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';
import '../../domain/class/class.dart';
import 'class_use_case.dart';

class SelectableClassNotifier extends StateNotifier<List<Class>> {
  SelectableClassNotifier(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void deleteClass(Class classInfo) {
    classRepository.deleteClass(classInfo);
  }

  void fetchSelectableClass(Class baseClass) {
    final classState = classRepository.fetchSelectableClass(baseClass);
    classState.listen((event) => state = event);
  }
}

final selectableClass = StateNotifierProvider(
  (ref) => SelectableClassNotifier(
    FakeClassRepository(testClassList, testClassDocument),
  ),
);
