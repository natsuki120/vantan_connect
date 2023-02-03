import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';

abstract class IQueryService {
  Future<List<Student>> fetchClassInfo({required ClassDocument classDocument});
}
