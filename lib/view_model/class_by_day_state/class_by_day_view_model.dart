import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/ripository/class_by_day/class_by_day_repository.dart';
import 'package:vantan_connect/ripository/class_by_day/class_by_day_repository_impl.dart';
import '../../data_model//class/class.dart';
import '../../data_model//class_by_day/class_by_day.dart';

class ClassByDayViewModel extends StateNotifier<List<ClassByDay>> {
  ClassByDayViewModel(this.classByDayRepository) : super([]);
  final ClassByDayRepository classByDayRepository;

  void fetchClassByDayInfo(Class classState) {
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
