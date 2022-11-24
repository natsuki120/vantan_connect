import 'package:vantan_connect/data_model/class/class.dart';
import '../../data_model/user/user_state.dart';

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
