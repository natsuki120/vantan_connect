import 'package:vantan_connect/domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/query_service/query_service.dart';

class QueryServiceUseCase {
  QueryServiceUseCase({required this.queryService});
  final IQueryService queryService;

  Future<List<Student>> fetchClassInfo(ClassDocument classDocument) async {
    return await queryService.fetchClassInfo(classDocument: classDocument);
  }

  Stream<Student> fetchStudentAttendance(
      {required Student student, required Class classInfo}) {
    return queryService.fetchStudentAttendance(
      student: student,
      classInfo: classInfo,
    );
  }

  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo}) {
    return queryService.fetchStudentAttendanceByClass(classInfo: classInfo);
  }

  Stream<List<Student>> fetchStudentNotAttendByClass(
      {required Class classInfo}) {
    return queryService.fetchStudentNotAttendanceByClass(classInfo: classInfo);
  }

  Stream<List<Student>> fetchStudentLateByClass({required Class classInfo}) {
    return queryService.fetchStudentLateByClass(classInfo: classInfo);
  }

  Stream<List<Student>> fetchStudentOtherByClass({required Class classInfo}) {
    return queryService.fetchStudentOtherByClass(classInfo: classInfo);
  }

  Stream<List<Class>> fetchClassListInAPClass() {
    return queryService.fetchLessonListInAPClass();
  }

  Stream<List<Class>> fetchClassListInAClass() {
    return queryService.fetchLessonListInAClass();
  }

  Stream<List<Class>> fetchClassListInBClass() {
    return queryService.fetchLessonListInBClass();
  }

  Stream<List<Class>> fetchClassListInCClass() {
    return queryService.fetchLessonListInCClass();
  }
}
