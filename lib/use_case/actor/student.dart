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
}
