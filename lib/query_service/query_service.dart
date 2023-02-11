import '../domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';

abstract class IQueryService {
  Future<List<Student>> fetchClassInfo({required ClassDocument classDocument});
  Stream<List<Class>> fetchLessonListInAPClass();
  Stream<List<Class>> fetchLessonListInAClass();
  Stream<List<Class>> fetchLessonListInBClass();
  Stream<List<Class>> fetchLessonListInCClass();
  Stream<Student> fetchStudentAttendance({
    required Student student,
    required Class classInfo,
  });
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo});
  Stream<List<Student>> fetchStudentNotAttendanceByClass(
      {required Class classInfo});
  Stream<List<Student>> fetchStudentLateByClass({required Class classInfo});
  Stream<List<Student>> fetchStudentOtherByClass({required Class classInfo});
}
