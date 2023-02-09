import '../domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';

abstract class IQueryService {
  Future<List<Student>> fetchClassInfo({required ClassDocument classDocument});
  Stream<Student> fetchStudentAttendance({
    required Student student,
    required Class classInfo,
  });
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument});
  Stream<List<Student>> fetchStudentNotAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument});
  Stream<List<Student>> fetchStudentLateByClass(
      {required Class classInfo, required ClassDocument classDocument});
  Stream<List<Student>> fetchStudentOtherByClass(
      {required Class classInfo, required ClassDocument classDocument});
}
