import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';
import '../../ripository/class/class_repository_impl.dart';

class SelectionClassStateViewModel extends StateNotifier<List<ClassState>> {
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
