import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';
import 'package:vantan_connect/use_case/state/class_use_case.dart';
import '../../domain/class/class.dart';
import '../../infrastructure/class_repository.dart';

class ClassDocumentNotifier extends StateNotifier<List<ClassDocument>> {
  ClassDocumentNotifier(this.classRepository) : super([]);

  final IClassRepository classRepository;

  void fetchClassDocument(Class baseClass) {
    final classState = classRepository.fetchClassDocument(baseClass);
    classState.listen((event) => state = [...event]);
    print(state);
  }
}

final classDocumentNotifier = StateNotifierProvider(
  (ref) => ClassDocumentNotifier(ClassRepository()),
);
