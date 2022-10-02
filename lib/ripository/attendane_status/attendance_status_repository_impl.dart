import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/model/attendance_status_state/attendance_status_state.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/attendane_status/attendance_status_repository.dart';

class AttendanceStatusRepositoryImpl extends AttendanceStatusRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<void> sendAttendanceStatus({
    required UserState userState,
    required ClassByDayState classByDayState,
    required String status,
    required String reason,
  }) async {
    final doc = await db.doc(
        '/public/v1/users/${userState.id}/readOnly/userInfo/class/${classByDayState.className}/classAttendanceStatus/${classByDayState.id}');
    await doc.set({
      'id': classByDayState.id,
      'attendance': status,
      'recordTime': '${DateTime.now().hour}:${DateTime.now().minute}',
      'name': userState.name,
      'reason': reason
    });
  }

  @override
  Stream<List<AttendanceStatusState>> fetchStudentAttendanceStatus(
      {required ClassByDayState classByDayState, required String attendance}) {
    final collection = db
        .collectionGroup('classAttendanceStatus')
        .where('id', isEqualTo: classByDayState.id)
        .where('attendance', isEqualTo: attendance)
        .snapshots();
    return collection.map(
      (QuerySnapshot snapshot) => snapshot.docs.map(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          return AttendanceStatusState.fromJson(data);
        },
      ).toList(),
    );
  }

  @override
  Stream<List<AttendanceStatusState>> fetchAllStudentAttendanceStatus(
      ClassByDayState classByDayState) {
    final collection = db
        .collectionGroup('classAttendanceStatus')
        .where('id', isEqualTo: classByDayState.id)
        .where('attendance', isNotEqualTo: '')
        .snapshots();
    return collection.map(
      (QuerySnapshot snapshot) => snapshot.docs.map(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          return AttendanceStatusState.fromJson(data);
        },
      ).toList(),
    );
  }
}
