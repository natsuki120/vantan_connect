import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/query_service/query_service.dart';

class QueryServiceRepositoryWhichUseFirebase extends IQueryService {
  final firestore = FirebaseFirestore.instance;

  // 仮置き
  @override
  Future<List<Student>> fetchClassInfo(
      {required ClassDocument classDocument}) async {
    return await firestore
        .collectionGroup('1.29')
        .where('className', isEqualTo: classDocument.className)
        .get()
        .then(
          (QuerySnapshot querySnapshot) =>
              querySnapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Future<Map<String, dynamic>> fetchStudentAttendance(
      {required Student student, required String className}) {
    final doc = firestore
        .collection(
            'v1/private/${student.id}/writeOnly/Lesson/${className}/${DateTime.now().month}.${DateTime.now().day}')
        .doc();
    return doc.get().then((DocumentSnapshot documentSnapshot) async {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return json['attendance'];
    });
  }
}
