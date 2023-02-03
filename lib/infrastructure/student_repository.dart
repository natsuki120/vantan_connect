import 'package:cloud_firestore/cloud_firestore.dart';

import '/component/local/attendance_modal_with_reason/elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';

//Here: interface repository
//Sample:
class StudentRepository extends IStudentRepository {
  final firestore = FirebaseFirestore.instance;

  // TODO 出席数は他の生徒にも見せていいのか話し合う
  @override
  void attendanceLesson(
      {required Student student, required ClassName className}) {
    final doc = firestore
        .collection(
            'v1/private/${student.id}/writeOnly/Lesson/${className.name}/${DateTime.now().month}.${DateTime.now().day}')
        .doc();
    doc.set({'attendance': true});
  }

  void setAttendanceState({
    required Student student,
    required ClassName className,
    required AttendanceState? attendanceState,
    required List<Map<String, dynamic>> selectedClass,
    required String? reasonText,
  }) {
    final doc = firestore
        .collection(
            'v1/private/${student.id}/writeOnly/Lesson/${className.name}/${DateTime.now().month}.${DateTime.now().day}')
        .doc();
    doc.set({'attendance': false});
    doc.set({'attendanceState': attendanceState});
    doc.set({'class': selectedClass});
    doc.set({'reason': reasonText});
  }
}
