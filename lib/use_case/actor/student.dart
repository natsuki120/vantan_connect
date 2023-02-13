import '/component/local/attendance_modal_with_reason/elements/radio_button_with_attendance_status/hooks/useAttendanceState.dart';
import '/domain/class/class.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';

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
    required Class classInfo,
    required String? reasonText,
  }) {
    studentRepository.setAttendanceState(
      student: student,
      className: className,
      attendanceState: attendanceState,
      classInfo: classInfo,
      reasonText: reasonText,
    );
  }
}
