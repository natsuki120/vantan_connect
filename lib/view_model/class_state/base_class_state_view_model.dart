import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';
import '../../ripository/class/class_repository_impl.dart';

class BaseClassStateViewModel extends StateNotifier<List<ClassState>> {
  BaseClassStateViewModel(this.classRepository) : super([]);
  final ClassRepository classRepository;

  void fetchBaseClassInfo() {
    final classState = classRepository.fetchBaseClassInfo();
    classState.listen((event) => state = [...event]);
  }
}

final baseClassStateViewModel = StateNotifierProvider(
  (ref) => BaseClassStateViewModel(
    ClassRepositoryImpl(),
  ),
);
