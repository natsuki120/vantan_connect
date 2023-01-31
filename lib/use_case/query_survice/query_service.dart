import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import '../../query_service/query_service.dart';

class QueryServiceUseCase {
  QueryServiceUseCase({required this.queryService});
  final IQueryService queryService;

  Future<List<Student>> fetchClassInfo(ClassDocument classDocument) async {
    return await queryService.fetchClassInfo(classDocument: classDocument);
  }
}
