import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/attendance_student_state/attendance_student_state.dart';

import '../../ripository/user_repository.dart';

class AttendanceStudentViewModel extends StateNotifier<AttendanceStudentState> {
  AttendanceStudentViewModel() : super(AttendanceStudentState());

  Future<void> fetchAttendanceUser() async {
    try {
      final userData = await UserRepository().fetchAttendanceUser();
      userData.listen((students) {
        state = state.copyWith(students: students.students);
      });
    } catch (e) {
      return;
    }
  }
}

final attendanceStudentViewModel =
    StateNotifierProvider<AttendanceStudentViewModel, AttendanceStudentState>(
  (ref) => AttendanceStudentViewModel(),
);
