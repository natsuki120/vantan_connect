import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import '../domain/student/student.dart';
import '../domain/value/class_name.dart';

class TestStudentRepository extends IStudentRepository {
  FakeFirebaseFirestore firestore = FakeFirebaseFirestore();
  @override
  void attendanceLesson(
      {required Student student, required ClassName className}) {
    final doc = firestore
        .collection(
            'v1/private/${student.id}/writeOnly/Lesson/${className.name}/${DateTime.now().month}.${DateTime.now().day}')
        .doc();
    doc.set({'attendance': true});
  }
}
