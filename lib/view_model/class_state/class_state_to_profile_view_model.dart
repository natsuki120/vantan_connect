import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/class_repository.dart';

class ClassStateToProfileViewModel extends StateNotifier<List<ClassState>> {
  ClassStateToProfileViewModel() : super([]);

  void fetchClassInfo() {
    final classState = ClassRepository().fetchClassInfoToProfile();
    classState.listen((dynamic event) => state = [...event]);
  }

  void fetchClassInfoToRegister() {
    final classState = ClassRepository().fetchClassInfoToRegister();
    classState.listen((event) => state = [...event]);
  }

  Future<void> applyClassToStuff(
      UserState userState, List<ClassState> classState) async {
    await ClassRepository().applyClassToStuff(userState, classState);
  }
}

final classStateViewModel =
    StateNotifierProvider.autoDispose((ref) => ClassStateToProfileViewModel());
