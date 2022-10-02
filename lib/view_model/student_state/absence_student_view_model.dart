import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/attendance_student_state/attendance_student_state.dart';

import '../../model/absence_student_state/absence_student_state.dart';
import '../../ripository/user/user_repository_impl.dart';

class AbsenceStudentViewModel extends StateNotifier<AbsenceStudentState> {
  AbsenceStudentViewModel() : super(AbsenceStudentState());

  Future<void> fetchAbsenceUser() async {
    try {
      final userData = await UserRepositoryImpl().fetchAbsenceUser();
      userData.listen((students) {
        state = state.copyWith(students: students.students);
      });
    } catch (e) {
      return;
    }
  }
}

final absenceStudentViewModel =
    StateNotifierProvider<AbsenceStudentViewModel, AbsenceStudentState>(
  (ref) => AbsenceStudentViewModel(),
);
