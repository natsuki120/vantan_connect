import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/use_case/state/class_use_case.dart';
import '/domain/class/class.dart';
import '/infrastructure/class_repository.dart';

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
    ClassRepository(),
  ),
);
