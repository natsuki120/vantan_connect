import 'package:vantan_connect/model/class_state/class_state.dart';

import '../../model/class_by_day_state/class_by_day_state.dart';

abstract class ClassByDayRepository {
  Stream<List<ClassByDayState>> fetchClassByDayInfo(ClassState classState);
}
