import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/attendance_status_state/attendance_status_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/attendane_status/attendance_status_repository.dart';
import '../../model/class_by_day_state/class_by_day_state.dart';
import '../../ripository/attendane_status/attendance_status_repository_impl.dart';

class AttendanceStatusViewModel
    extends StateNotifier<List<AttendanceStatusState>> {
  AttendanceStatusViewModel(this.attendanceStatusRepository) : super([]);

  final AttendanceStatusRepository attendanceStatusRepository;

  final List<AttendanceStatusState> testList = [
    AttendanceStatusState(name: 'あつや', attendance: '出席'),
    AttendanceStatusState(name: 'なお', attendance: '欠席'),
    AttendanceStatusState(name: 'いっせい', attendance: '遅刻'),
    AttendanceStatusState(name: 'なつき', attendance: '出席'),
    AttendanceStatusState(name: 'いけちゃん', attendance: '欠席'),
    AttendanceStatusState(name: 'うじ', attendance: '遅刻'),
    AttendanceStatusState(name: 'りょーま', attendance: '出席'),
    AttendanceStatusState(name: 'しまの', attendance: '欠席'),
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

  void fetchStudentAttendanceStatus(
      ClassByDayState classByDayState, String attendance) {
    // final statusList = attendanceStatusRepository.fetchStudentAttendanceStatus(
    //   classByDayState: classByDayState,
    //   attendance: attendance,
    // );
    // statusList.listen((status) => state = status);
    // if (attendance == '出席確認済み') {
    //   final statusList = attendanceStatusRepository
    //       .fetchAllStudentAttendanceStatus(classByDayState);
    //   statusList.listen((status) => state = status);
    // } else {
    //   final statusList =
    //       attendanceStatusRepository.fetchStudentAttendanceStatus(
    //           classByDayState: classByDayState, attendance: attendance);
    //   statusList.listen((status) => state = status);
    // }
    if (attendance == '出席確認済み') {
      state = testList;
    } else {
      state = testList
          .where((element) => element.attendance == attendance)
          .toList();
    }
  }
}

final attendanceStatusViewModel = StateNotifierProvider(
  (ref) => AttendanceStatusViewModel(
    AttendanceStatusRepositoryImpl(),
  ),
);
