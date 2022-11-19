import '../../entity/class/class.dart';
import '../../entity/class_by_day/class_by_day.dart';

abstract class ClassByDayRepository {
  Stream<List<ClassByDay>> fetchClassByDayInfo(Class classState);
}
