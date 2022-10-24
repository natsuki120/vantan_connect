import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/ripository/class_by_day/class_by_day_repository.dart';
import 'package:vantan_connect/ripository/class_by_day/class_by_day_repository_impl.dart';

class ClassByDayViewModel extends StateNotifier<List<ClassByDayState>> {
  ClassByDayViewModel(this.classByDayRepository) : super([]);
  final ClassByDayRepository classByDayRepository;

  void fetchClassByDayInfo(ClassState classState) {
    final classInfo = classByDayRepository.fetchClassByDayInfo(classState);
    classInfo.listen(
      (classInfo) {
        classInfo.sort(
          (a, b) => a.day!.compareTo(
            b.day!,
          ),
        );
        state = [...classInfo];
      },
    );
  }
}

final classByDayStateViewModel = StateNotifierProvider(
  (ref) => ClassByDayViewModel(
    ClassByDayRepositoryImpl(),
  ),
);
