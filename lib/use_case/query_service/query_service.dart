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
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentAttendanceByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Student>> fetchStudentNotAttendByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentNotAttendanceByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Student>> fetchStudentLateByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentLateByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Student>> fetchStudentOtherByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentOtherByClass(
        classInfo: classInfo, classDocument: classDocument);
  }
}
