import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/teacher/teacher.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/query_service/query_service.dart';

class QueryServiceRepositoryWhichUseFirebase extends IQueryService {
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Stream<List<Student>> fetchAllStudentByClass({required Class classInfo}) {
    final collection = firestore
        .collection('c_class/2.16/lesson/プログラミング/attendance/2月16日/confirmed');
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
    final collection = firestore
        .collection('c_class/2.16/lesson/${classInfo.name}/attendance');
    return collection.get().then(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return ClassDocument.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<Student>> fetchAllClassDocumentByDay(
      {required Class classInfo, required ClassDocument classDocument}) {
    final collection = firestore.collection(
        'c_class/${classInfo.name}/day/${classDocument.day}/confirmed');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Student.fromJson(json);
        }).toList());
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
    var now = DateTime.now();
    var weekdayFormat = DateFormat('EEEE', 'ja_JP');
    var weekday = weekdayFormat.format(now);
    final collection = firestore
        .collection('c_class')
        .where('weakDay', arrayContains: weekday);
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return Class.fromJson(json);
        }).toList());
  }

  @override
  Stream<Student> fetchStudentAttendance(
      {required Student student, required classInfo}) {
    final doc = firestore
        .doc('c_class/${classInfo.name}/day/2月16日/confirmed/${student.name}');
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
            'c_class/${classInfo.name}/day/${classDocument.day}/confirmed')
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
            'c_class/${classInfo.name}/day/${classDocument.day}/confirmed')
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
            'c_class/${classInfo.name}/day/${classDocument.day}/confirmed')
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
            'c_class/${classInfo.name}/day/${classDocument.day}/confirmed')
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
      final doc = firestore.doc('c_class/${classInfo.name}');
      doc.set(classInfo.toJson());
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

  void registerLoggedStudent({required Student student}) {
    final doc = firestore.doc('c_class_student/${student.name}');
    doc.set(student.toJson());
  }

  Future<Student> identifyStudent({required String name}) async {
    final doc = await firestore.doc('c_class_student/$name');
    return await doc.get().then((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Student.fromJson(json);
    });
  }

  // TODO　便宜上Teacher型にしてる
  Future<Teacher> identifyStuff({required String name}) async {
    final doc = await firestore.doc('teacher/$name');
    return await doc.get().then((DocumentSnapshot documentSnapshot) {
      final json = documentSnapshot.data() as Map<String, dynamic>;
      return Teacher.fromJson(json);
    });
  }

  @override
  Stream<List<ClassDocument>> fetchClassDayWhichWasHeld(
      {required String className, required String course}) {
    final collection = firestore.collection('c_class/$className/day');
    return collection.snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot documentSnapshot) {
          final json = documentSnapshot.data() as Map<String, dynamic>;
          return ClassDocument.fromJson(json);
        }).toList());
  }
}
