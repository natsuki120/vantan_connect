import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/class/class.dart';
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
        .doc('c_class/${className.name}/day/2月16日/confirmed/${student.name}');
    doc.set({
      'name': student.name,
      'day': "${DateTime.now().month}月${DateTime.now().day}日",
      'attendanceState': '出席',
    });
  }

  void setAttendanceState({
    required Student student,
    required AttendanceState attendanceState,
    required Class classInfo,
    required String? reasonText,
  }) {
    final doc = firestore
        .doc('c_class/${classInfo.name}/day/2月16日/confirmed/${student.name}');
    doc.set({
      'name': student.name,
      'attendanceState': attendanceState.displayState,
      'studentName': student.name,
      'reason': reasonText,
    });
  }
}
