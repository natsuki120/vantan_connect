import '../domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';

abstract class IQueryService {
  Future<List<Student>> fetchClassInfo({required ClassDocument classDocument});
  Future<Map<String, dynamic>> fetchStudentAttendance({
    required Student student,
    required Class classInfo,
  });
}
