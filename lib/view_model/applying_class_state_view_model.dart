import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/applying_class_state/applying_class_state.dart';
import 'package:vantan_connect/ripository/class_repository.dart';

class ApplyingClassStateViewModel
    extends StateNotifier<List<ApplyingClassState>> {
  ApplyingClassStateViewModel() : super([]);

  void fetchApplyingClassInfo() {
    final applyingClassList = ClassRepository().fetchApplyingClassInfo();
    applyingClassList.listen((applyingClass) => state = [...applyingClass]);
  }
}

final applyingClassStateViewModel =
    StateNotifierProvider((ref) => ApplyingClassStateViewModel());
