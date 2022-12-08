import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';
import '../../domain/class/class.dart';
import 'class_use_case.dart';

class BaseClassNotifier extends StateNotifier<List<Class>> {
  BaseClassNotifier(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchBaseClass() {
    final classState = classRepository.fetchBaseClass();
    classState.listen((event) => state = event);
  }
}

final baseClass = StateNotifierProvider(
  (ref) => BaseClassNotifier(
    FakeClassRepository(testClassList, testClassDocument),
  ),
);
