import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/ripository/class_repository.dart';

class ClassStateViewModel extends StateNotifier<List<ClassState>> {
  ClassStateViewModel() : super([]);

  void fetchClassInfo() {
    final classState = ClassRepository().fetchClassInfo();
    classState.listen((dynamic event) {
      state = [...event];
    });
  }
}

final classStateViewModel =
    StateNotifierProvider((ref) => ClassStateViewModel());
