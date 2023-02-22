import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vantan_connect/domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/query_service/query_service.dart';

class QueryServiceRepositoryWhichUseFirebase extends IQueryService {
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Stream<List<Student>> fetchAllStudentByClass({required Class classInfo}) {
    final collection = firestore.collection(
        'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance/${DateTime.now().month}月${16}日/confirmed');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Future<List<ClassDocument>> fetchAllClassDocumentByClass(
      {required Class classInfo}) {
    final collection = firestore.collection(
        'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance');
    return collection.get().then(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return ClassDocument.fromJson(json);
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
    final collection =
        firestore.collection('a_class/${DateTime.now().month}.${16}/lesson');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

  @override
  Stream<List<Class>> fetchLessonListInBClass() {
    final collection =
        firestore.collection('b_class/${DateTime.now().month}.${16}/lesson');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

//メモFirebase関係のやつは時々こうなっているので直した方が良いかも？
  @override
  Stream<List<Class>> fetchLessonListInCClass() {
    final collection =
        firestore.collection('c_class/${DateTime.now().month}.${16}/lesson');
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
        'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance/${DateTime.now().month}月${16}日/confirmed/${student.id}');
    return doc.snapshots().map((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Student.fromJson(json);
    });
  }

  @override
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    final collection = firestore
        .collection(
            'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance/${classDocument.day}/confirmed')
        .where('attendanceState', isEqualTo: '出席');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<Student>> fetchStudentLateByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    final collection = firestore
        .collection(
            'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance/${classDocument.day}/confirmed')
        .where('attendanceState', isEqualTo: '遅刻');
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
      {required Class classInfo, required ClassDocument classDocument}) {
    final collection = firestore
        .collection(
            'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance/${classDocument.day}/confirmed')
        .where('attendanceState', isEqualTo: '欠席');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return Student.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<Student>> fetchStudentOtherByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    final collection = firestore
        .collection(
            'c_class/${DateTime.now().month}.${16}/lesson/${classInfo.name}/attendance/${classDocument.day}/confirmed')
        .where('attendanceState', isEqualTo: 'その他(公欠を除く)');
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

  Future<Map<String, dynamic>> login(
      {required String name, required String course}) async {
    final doc = await firestore.doc('$course/$name');
    return doc.get().then((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return json;
    });
  }

  @override
  Future<Student> fetchStudentInfo({required String name}) async {
    final doc = await firestore.doc('student/$name');
    return doc.get().then((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Student.fromJson(json);
    });
  }

  Future<Student> fetchStudent({required String studentName}) async {
    final doc = await firestore.doc('student/$studentName');
    return doc.get().then((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Student.fromJson(json);
    });
  }

  void sendTestStudent({required List<Student> studentList}) {
    for (Student student in studentList) {
      final doc = firestore.doc('student/${student.name}');
      doc.set(student.toJson());
    }
  }
}
