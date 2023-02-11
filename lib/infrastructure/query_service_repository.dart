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
  Stream<List<Class>> fetchLessonListInAPClass() {
    final collection = firestore.collection('ap_class/2.13/lesson');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

  @override
  Stream<List<Class>> fetchLessonListInAClass() {
    final collection = firestore.collection(
        'a_class/${DateTime.now().month}.${DateTime.now().day}/lesson');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

  @override
  Stream<List<Class>> fetchLessonListInBClass() {
    final collection = firestore.collection(
        'b_class/${DateTime.now().month}.${DateTime.now().day}/lesson');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

  @override
  Stream<List<Class>> fetchLessonListInCClass() {
    final collection = firestore.collection(
        'c_class/${DateTime.now().month}.${DateTime.now().day}/lesson');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

  @override
  Stream<Student> fetchStudentAttendance(
      {required Student student, required classInfo}) {
    final doc = firestore.doc(
        'v1/private/${student.id}/writeOnly/Lesson/${classInfo.name}/attendance/2.4');
    return doc.snapshots().map((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Student.fromJson(json);
    });
  }

  @override
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo}) {
    final collection = firestore
        .collection('ap_class/2.13/lesson/${classInfo.name}/attendance');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<Student>> fetchStudentLateByClass({required Class classInfo}) {
    final collection =
        firestore.collection('ap_class/2.13/lesson/${classInfo.name}/late');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<Student>> fetchStudentNotAttendanceByClass(
      {required Class classInfo}) {
    final collection = firestore
        .collection('ap_class/2.13/lesson/${classInfo.name}/notAttendance');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<Student>> fetchStudentOtherByClass({required Class classInfo}) {
    final collection =
        firestore.collection('ap_class/2.13/lesson/${classInfo.name}/other');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  void sendClassInfo({required List<Class> classList}) {
    for (Class classInfo in classList) {
      for (ClassDocument classDocument in classInfo.classDocumentList) {
        final doc = firestore
            .doc('c_class/${classDocument.day}/lesson/${classInfo.name}');
        doc.set(classInfo.toJson());
      }
    }
  }
}
