import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';
import '../../entity/class/class.dart';
import '../../ripository/class/class_repository_impl.dart';

class SelectionClassStateViewModel extends StateNotifier<List<Class>> {
  SelectionClassStateViewModel(this.classRepository) : super([]);
  final ClassRepository classRepository;

  void fetchSelectionClassInfo() {
    final classState = classRepository.fetchSelectionClassInfo();
    classState.listen((event) => state = [...event]);
  }
}

final selectionClassStateViewModel = StateNotifierProvider(
  (ref) => SelectionClassStateViewModel(
    ClassRepositoryImpl(),
  ),
);
