import 'package:vantan_connect/entity/class/class.dart';
import '../../entity/user/user_state.dart';

abstract class ClassRepository {
  Stream<List<Class>> fetchClassInfoWhichStudentRegistered();

  Stream<List<Class>> fetchClassInfoToConfirmDetail();

  Stream<List<Class>> fetchBaseClassInfo();

  Stream<List<Class>> fetchSelectionClassInfo();

  Future<void> applyClassToStuff(
    UserState userState,
    List<Class> classStateList,
  );
}
