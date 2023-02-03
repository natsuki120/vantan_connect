import '../../domain/class/class.dart';
import '../../domain/class_document/class_document.dart';
import '../../domain/student/student.dart';
import '../../query_service/query_service.dart';

class QueryServiceUseCase {
  QueryServiceUseCase({required this.queryService});
  final IQueryService queryService;

  Future<List<Student>> fetchClassInfo(ClassDocument classDocument) async {
    return await queryService.fetchClassInfo(classDocument: classDocument);
  }

  Future<bool> hasBeenAttended(
      {required Student student, required Class classInfo}) async {
    final json = await queryService.fetchStudentAttendance(
        student: student, className: classInfo.name);
    if (json['attendance'] == true) {
      return true;
    } else {
      return false;
    }
  }
}
