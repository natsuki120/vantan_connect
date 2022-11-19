import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';
import '../../entity/class/class.dart';
import '../../entity/user/user_state.dart';
import '../../ripository/class/class_repository_impl.dart';

class ClassStateViewModel extends StateNotifier<List<Class>> {
  ClassStateViewModel(this.classRepository) : super([]);
  final ClassRepository classRepository;

  void fetchClassInfoWhichStudentRegistered() {
    final classState = classRepository.fetchClassInfoWhichStudentRegistered();
    classState.listen((event) => state = [...event]);
    state.sort((a, b) => a.timeTable.compareTo(b.timeTable));
  }

  void fetchClassInfoToConfirmDetail() {
    final classState = classRepository.fetchClassInfoToConfirmDetail();
    classState.listen((event) => state = [...event]);
  }

  Future<void> applyClassToStuff(
      UserState userState, List<Class> classState) async {
    await classRepository.applyClassToStuff(userState, classState);
  }
}

final classViewModel =
    StateNotifierProvider((ref) => ClassStateViewModel(ClassRepositoryImpl()));
