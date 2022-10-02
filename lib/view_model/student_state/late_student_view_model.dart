import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/late_student_state/late_student_state.dart';
import '../../ripository/user/user_repository_impl.dart';

class LateStudentViewModel extends StateNotifier<LateStudentState> {
  LateStudentViewModel() : super(LateStudentState());

  Future<void> fetchLateUser() async {
    try {
      final userData = await UserRepositoryImpl().fetchLatenessUser();
      userData.listen((students) {
        state = state.copyWith(students: students.students);
      });
    } catch (e) {
      return;
    }
  }
}

final lateStudentViewModel =
    StateNotifierProvider<LateStudentViewModel, LateStudentState>(
  (ref) => LateStudentViewModel(),
);
