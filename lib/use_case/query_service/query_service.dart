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

  Future<Map<String, dynamic>> fetchStudentAttendance(
      {required Student student, required Class classInfo}) async {
    return await queryService.fetchStudentAttendance(
      student: student,
      classInfo: classInfo,
    );
  }
}
