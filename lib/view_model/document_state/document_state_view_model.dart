import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'package:vantan_connect/model/document_state/document_state.dart';
import 'package:vantan_connect/ripository/document/document_repository.dart';
import 'package:vantan_connect/ripository/document/document_repository_impl.dart';

class DocumentStateViewModel extends StateNotifier<List<DocumentState>> {
  DocumentStateViewModel(this.documentRepository) : super([]);

  final DocumentRepository documentRepository;

  void fetchDocumentWhichUseInClass(ClassByDayState classByDayState) {
    final document =
        documentRepository.fetchDocumentWhichUseInClass(classByDayState);
    document.listen((docInfo) => state = [...docInfo]);
  }
}

final documentStateViewModel = StateNotifierProvider(
  (ref) => DocumentStateViewModel(
    DocumentRepositoryImpl(),
  ),
);
