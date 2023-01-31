import 'package:vantan_connect/component/local/attendance_modal_with_reason/elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/domain/value/class_name.dart';

class StudentUseCase {
  StudentUseCase(this.studentRepository);
  final IStudentRepository studentRepository;

  void attendanceLesson({
    required Student student,
    required ClassName className,
  }) {
    studentRepository.attendanceLesson(student: student, className: className);
  }

  void setAttendanceState({
    required Student student,
    required ClassName className,
    required AttendanceState? attendanceState,
    required List<Map<String, dynamic>> selectedClass,
    required String? reasonText,
  }) {
    studentRepository.setAttendanceState(
      student: student,
      className: className,
      attendanceState: attendanceState,
      selectedClass: selectedClass,
      reasonText: reasonText,
    );
  }
}
