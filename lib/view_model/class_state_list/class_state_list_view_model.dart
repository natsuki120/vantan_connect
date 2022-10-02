import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_state_list/class_state_list.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';

import '../../ripository/class/class_repository_impl.dart';

class ClassStateListViewModel extends StateNotifier<ClassStateList> {
  ClassStateListViewModel(this.classRepository) : super(ClassStateList());

  final ClassRepository classRepository;

  void fetchClassInfoToConfirmDetail() {
    final classState = classRepository.fetchClassInfoToConfirmDetail();
    classState.listen((event) => state = state.copyWith(classList: [...event]));
  }
}

final classStateListViewModel = StateNotifierProvider(
    (ref) => ClassStateListViewModel(ClassRepositoryImpl()));
