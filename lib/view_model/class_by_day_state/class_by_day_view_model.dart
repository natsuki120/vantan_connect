import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/ripository/class_by_day/class_by_day_repository.dart';
import 'package:vantan_connect/ripository/class_by_day/class_by_day_repository_impl.dart';

class ClassByDayViewModel extends StateNotifier<List<ClassByDayState>> {
  ClassByDayViewModel(this.classByDayRepository) : super([]);
  final ClassByDayRepository classByDayRepository;

  void fetchClassByDayInfo() {
    final classInfo = classByDayRepository.fetchClassByDayInfo();
    classInfo.listen((classInfo) => state = [...classInfo]);
  }
}

final classByDayStateViewModel = StateNotifierProvider(
  (ref) => ClassByDayViewModel(
    ClassByDayRepositoryImpl(),
  ),
);
