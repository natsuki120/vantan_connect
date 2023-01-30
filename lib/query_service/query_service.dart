import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';

abstract class IQueryService {
  Future<List<Student>> fetchClassInfo({required ClassDocument classDocument});
}
