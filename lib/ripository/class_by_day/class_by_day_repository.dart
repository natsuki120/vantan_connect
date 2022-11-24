import '../../data_model//class/class.dart';
import '../../data_model//class_by_day/class_by_day.dart';

abstract class ClassByDayRepository {
  Stream<List<ClassByDay>> fetchClassByDayInfo(Class classState);
}
