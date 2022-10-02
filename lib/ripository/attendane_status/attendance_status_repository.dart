import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import '../../model/attendance_status_state/attendance_status_state.dart';

abstract class AttendanceStatusRepository {
  Future<void> sendAttendanceStatus({
    required UserState userState,
    required ClassByDayState classByDayState,
    required String status,
    required String reason,
  });
  Stream<List<AttendanceStatusState>> fetchStudentAttendanceStatus({
    required ClassByDayState classByDayState,
    required String attendance,
  });

  Stream<List<AttendanceStatusState>> fetchAllStudentAttendanceStatus(
    ClassByDayState classByDayState,
  );
}
