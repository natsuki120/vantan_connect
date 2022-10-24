import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/attendance_status_state/attendance_status_state.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/attendane_status/attendance_status_repository.dart';
import '../../model/class_by_day_state/class_by_day_state.dart';
import '../../ripository/attendane_status/attendance_status_repository_impl.dart';

class AttendanceStatusViewModel
    extends StateNotifier<List<AttendanceStatusState>> {
  AttendanceStatusViewModel(this.attendanceStatusRepository) : super([]);

  // TODO 履修者一覧と出席確認画面のstateは別々にする

  final AttendanceStatusRepository attendanceStatusRepository;

  List<AttendanceStatusState> testList = [
    AttendanceStatusState(name: 'あつや', attendance: '出席'),
    AttendanceStatusState(name: 'なお', attendance: '欠席', reason: '体調不良のため'),
    AttendanceStatusState(name: 'いっせい', attendance: '遅刻'),
    AttendanceStatusState(name: 'いけちゃん', attendance: '', reason: ''),
    AttendanceStatusState(name: 'うじ', attendance: '', reason: ''),
    AttendanceStatusState(name: 'りょーま', attendance: '出席'),
    AttendanceStatusState(name: 'しまの', attendance: '欠席', reason: '体調不良のため'),
    AttendanceStatusState(name: 'ともや', attendance: '遅刻'),
    AttendanceStatusState(name: 'けいご', attendance: '出席'),
  ];

  Future<void> sendAttendanceStatus({
    required UserState userState,
    required ClassByDayState classByDayState,
    required String status,
    required String reason,
  }) async {
    await attendanceStatusRepository.sendAttendanceStatus(
      userState: userState,
      classByDayState: classByDayState,
      status: status,
      reason: reason,
    );
  }

  void get fetchAttendanceStudent => state = testList;

  void fetchStudentAttendanceStatus(ClassByDayState classByDayState) {
    final statusList = attendanceStatusRepository.fetchStudentAttendanceStatus(
      classByDayState: classByDayState,
    );
    statusList.listen((statusList) => state = [...statusList, ...testList]);
  }

  void fetchAllStudentAttendanceStatus(ClassState classState) {
    final statusList =
        attendanceStatusRepository.fetchAllStudentAttendanceStatus(classState);
    statusList.listen((statusList) => state = [...statusList, ...testList]);
  }
}

final attendanceStatusViewModel = StateNotifierProvider(
  (ref) => AttendanceStatusViewModel(
    AttendanceStatusRepositoryImpl(),
  ),
);
