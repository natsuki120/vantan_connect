import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/model/document_state/document_state.dart';
import 'package:vantan_connect/ripository/document/document_repository.dart';

class DocumentRepositoryImpl extends DocumentRepository {
  final db = FirebaseFirestore.instance;

  @override
  Stream<List<DocumentState>> fetchDocumentWhichUseInClass(
    ClassByDayState classByDayState,
  ) {
    final collection = db
        .collection(
          '/all_class/VTA_class/2022/first_semester/all_class/Flutter/start_date/${classByDayState.id}/all_document',
        )
        .snapshots();
    return collection.map<List<DocumentState>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                DocumentState.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
