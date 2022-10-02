import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/applying_class_state/applying_class_state.dart';

import '../ripository/class/class_repository_impl.dart';

class ApplyingClassStateViewModel
    extends StateNotifier<List<ApplyingClassState>> {
  ApplyingClassStateViewModel() : super([]);

  void fetchApplyingClassInfo() {
    final applyingClassList = ClassRepositoryImpl().fetchApplyingClassInfo();
    applyingClassList.listen((applyingClass) => state = [...applyingClass]);
  }
}

final applyingClassStateViewModel =
    StateNotifierProvider((ref) => ApplyingClassStateViewModel());
