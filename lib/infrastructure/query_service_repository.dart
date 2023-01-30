import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/query_service/query_service.dart';

class QueryServiceRepositoryWhichUseFirebase extends IQueryService {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<List<Student>> fetchClassInfo(
      {required ClassDocument classDocument}) async {
    return await firestore
        .collection('Lesson/${classDocument.className}/${classDocument.day}')
        .get()
        .then(
          (QuerySnapshot querySnapshot) =>
              querySnapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }
}
