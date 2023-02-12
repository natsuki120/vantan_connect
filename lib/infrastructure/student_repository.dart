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
    final doc = firestore.doc(
        'ap_class/2.13/lesson/${className.name}/attendance/2月3日/attended/${student.id}');
    doc.set({'name': student.id, 'day': "2月3日"});
  }

  void setAttendanceState({
    required Student student,
    required ClassName className,
    required AttendanceState? attendanceState,
    required List<Map<String, dynamic>> selectedClass,
    required String? reasonText,
  }) {
    final doc = firestore.doc(
        'v1/private/${student.id}/writeOnly/Lesson/${className.name}/attendance/${DateTime.now().month}.${DateTime.now().day}');
    doc.set({'attendance': false});
    doc.set({'attendanceState': attendanceState});
    doc.set({'class': selectedClass});
    doc.set({'reason': reasonText});
  }
}
