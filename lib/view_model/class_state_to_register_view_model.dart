import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/class_state/class_state.dart';
import '../ripository/class_repository.dart';

class ClassStateToRegisterViewModel extends StateNotifier<ClassState> {
  ClassStateToRegisterViewModel() : super(ClassState());

  // void fetchClassInfoToRegister() {
  //   final classState = ClassRepository().fetchClassInfoToRegister();
  //   classState.listen((event) => state = [...event]);
  // }
}
