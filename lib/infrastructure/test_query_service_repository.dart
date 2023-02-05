import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/query_service/query_service.dart';

class TestQueryServiceRepository extends IQueryService {
  FakeFirebaseFirestore firestore = FakeFirebaseFirestore();

  void sendStudentAttendance(
      {required Student student, required Class classInfo}) {
    final doc = firestore
        .collection(
          'v1/private/${student.id}/writeOnly/Lesson/${classInfo.name}/${DateTime.now().month}.${DateTime.now().day}',
        )
        .doc();
    doc.set({'attendance': true});
  }

  @override
  Future<List<Student>> fetchClassInfo({required ClassDocument classDocument}) {
    // TODO: implement fetchClassInfo
    throw UnimplementedError();
  }

  @override
  Stream<Student> fetchStudentAttendance(
      {required Student student, required Class classInfo}) {
    final doc = firestore.doc(
        'v1/private/${student.id}/writeOnly/Lesson/${classInfo.name}/attendance/${DateTime.now().month}.${DateTime.now().day}');
    return doc.snapshots().map((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Student.fromJson(json);
    });
  }
}
