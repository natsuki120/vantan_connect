import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/attendance_status_state/attendance_status_state.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/ripository/attendane_status/attendance_status_repository_impl.dart';
import '../../ripository/attendane_status/attendance_status_repository.dart';

class AttendanceStatusStateList
    extends StateNotifier<List<AttendanceStatusState>> {
  AttendanceStatusStateList(this.attendanceStatusRepository) : super([]);

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

  void fetchAttendanceStatusStateList(ClassByDayState classByDayState) {
    final statusList = attendanceStatusRepository.fetchStudentAttendanceStatus(
      classByDayState: classByDayState,
    );
    statusList.listen((statusList) => state = [...statusList, ...testList]);
  }

  void fetchStatusStateByAttendanceList(
      ClassByDayState classByDayState, String attendance) {
    List list = [];
    final statusList = attendanceStatusRepository
        .fetchStudentByAttendanceStatus(classByDayState, attendance);
    for (var i in testList) {
      if (i.attendance == attendance) {
        list.add(i);
      }
    }
    statusList.listen((statusList) => state = [...statusList, ...list]);
  }
}

final attendanceStatusStateList = StateNotifierProvider(
  (ref) => AttendanceStatusStateList(
    AttendanceStatusRepositoryImpl(),
  ),
);
