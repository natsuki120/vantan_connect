import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/model/document_state/document_state.dart';

abstract class DocumentRepository {
  Stream<List<DocumentState>> fetchDocumentWhichUseInClass(
      ClassByDayState classByDayState);
}
