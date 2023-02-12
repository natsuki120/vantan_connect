import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/query_service/query_service.dart';

class TestQueryServiceRepository extends IQueryService {
  FakeFirebaseFirestore firestore = FakeFirebaseFirestore();

  TestQueryServiceRepository(List<Student> studentList) {
    for (Student student in studentList) {
      sendStudentAttendance(
        student: student,
        classInfo: Class(name: 'プログラミング'),
      );
    }
  }

  void sendStudentAttendance(
      {required Student student, required Class classInfo}) {
    final doc = firestore
        .collection(
          'all_class/VTA_class/2022/first_semester/all_class/${classInfo.name}/attendance/day/student',
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

  @override
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    final collection = firestore.collection(
        'all_class/VTA_class/2022/first_semester/all_class/${classInfo.name}/attendance/day/student');
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
    // TODO: implement fetchStudentLateByClass
    throw UnimplementedError();
  }

  @override
  Stream<List<Student>> fetchStudentNotAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    // TODO: implement fetchStudentNotAttendanceByClass
    throw UnimplementedError();
  }

  @override
  Stream<List<Student>> fetchStudentOtherByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    // TODO: implement fetchStudentOtherByClass
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchLessonListInAClass() {
    // TODO: implement fetchLessonListInAClass
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchLessonListInAPClass() {
    // TODO: implement fetchLessonListInAPClass
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchLessonListInBClass() {
    // TODO: implement fetchLessonListInBClass
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchLessonListInCClass() {
    // TODO: implement fetchLessonListInCClass
    throw UnimplementedError();
  }

  @override
  Future<List<ClassDocument>> fetchAllClassDocumentByClass(
      {required Class classInfo}) {
    // TODO: implement fetchAllClassDocumentByClass
    throw UnimplementedError();
  }

  @override
  Future<List<Student>> fetchAllStudentByClass({required Class classInfo}) {
    // TODO: implement fetchAllStudentByClass
    throw UnimplementedError();
  }
}
