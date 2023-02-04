import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/query_service/query_service.dart';

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
      {required Student student, required classInfo}) {
    final doc = firestore.doc(
        'v1/private/${student.id}/writeOnly/Lesson/${classInfo.name}/attendance/${DateTime.now().month}.${DateTime.now().day}');
    return doc.get().then((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return json['attendance'];
    });
  }

  @override
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo}) {
    final collection = firestore
        .collection(
            '/all_class/VTA_class/${DateTime.now().year}/first_semester/all_class/${classInfo.name}/attendance/${DateTime.now().month}.${DateTime.now().day}/student')
        .snapshots();
    return collection.map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Student.fromJson(json);
        }).toList());
  }
}
