import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/class/class.dart';
import '../../infrastructure/class_repository.dart';

class BaseClassNotifier extends StateNotifier<List<Class>> {
  BaseClassNotifier(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchBaseClass() {
    final classState = classRepository.fetchBaseClass();
    classState.listen((event) => state = event);
  }
}

final baseClass = StateNotifierProvider(
  (ref) => BaseClassNotifier(ClassRepository()),
);
