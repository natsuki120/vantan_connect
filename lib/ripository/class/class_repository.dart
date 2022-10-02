import 'package:vantan_connect/model/user_state/user_state.dart';
import '../../model/class_state/class_state.dart';

abstract class ClassRepository {
  Stream<List<ClassState>> fetchClassInfoWhichStudentRegistered();

  Stream<List<ClassState>> fetchClassInfoToConfirmDetail();

  Future<void> applyClassToStuff(
    UserState userState,
    List<ClassState> classStateList,
  );
}
