import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/domain/teacher/teacher.dart';
import 'package:vantan_connect/domain/value/student_id.dart';
import 'package:vantan_connect/domain/value/teacher_id.dart';

class ClassRepository extends IClassRepository {
  final firestore = FirebaseFirestore.instance;

  void registerClass(Class classInfo) {
    final collection = firestore.doc(
        'all_class/VTA_class/2022/first_semester/all_class/${classInfo.name}');
    collection.set({
      'id': collection.id,
      'name': classInfo.name,
      'overView': classInfo.overView,
      'goalPoint': classInfo.goalPoint,
      'selectableBaseClass': 'false',
      'frameCount': classInfo.frameCount,
      'goalRequirements': classInfo.goalRequirements,
      'baseClass': classInfo.baseClass,
      'classImgUrl': classInfo.classImgUrl,
      'document': classInfo.document,
      'studentIdList': classInfo.studentIdList
          .map((studentId) => studentId.id.toString())
          .toList(),
      'teacherIdList': classInfo.teacherIdList
          .map((teacherId) => teacherId.id.toString())
          .toList(),
    });
  }

  void registerMyClass(Class classInfo) {
    final collection = firestore.doc('my_class/${classInfo.id}');
    collection.set(classInfo.toJson());
  }

  void registerStudent(Student student) {
    final document = firestore.doc('student/${student.id}');
    document.set({
      'id': student.id,
      'name': student.name,
      'job': student.job,
      'userImagePath': student.userImagePath,
    });
  }

  void registerTeacher(Teacher teacher) {
    final collection = firestore.collection('teacher');
    collection.add({
      'id': collection.doc().id,
      'name': teacher.name,
      'job': teacher.job,
      'userImagaPath': teacher.userImagePath,
    });
  }

  void registerDocument(ClassDocument classDocument) {
    final collection = firestore.doc(
      'all_class/VTA_class/2022/first_semester/all_class/UIUXデザイン実践/document/${classDocument.title}',
    );
    collection.set(classDocument.toJson());
  }

  @override
  Stream<List<Class>> fetchBaseClass() {
    final collection = firestore
        .collection('all_class/VTA_class/2022/first_semester/all_class')
        .where('baseClass', isEqualTo: '')
        .snapshots();
    return collection.map<List<Class>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                Class.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Stream<List<Class>> fetchClassInfo() {
    final collection = firestore.collection('my_class').snapshots();
    return collection.map<List<Class>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                Class.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Stream<List<Class>> fetchSelectableClass(Class baseClass) {
    final collection = firestore
        .collection('all_class/VTA_class/2022/first_semester/all_class')
        .where('baseClass', isEqualTo: baseClass.name)
        .snapshots();
    return collection.map<List<Class>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                Class.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  void deleteClass(Class classInfo) {
    firestore.doc('my_class/${classInfo.id}').delete();
  }

  @override
  void deleteAllClass(List<Class> classList) {
    for (var classInfo in classList) {
      firestore.doc('my_class/${classInfo.id}').delete();
    }
  }

  @override
  Stream<List<ClassDocument>> fetchClassDocument(Class classInfo) {
    final collection = firestore
        .collection(
          'all_class/VTA_class/2022/first_semester/all_class/${classInfo.name}/document',
        )
        .snapshots();
    return collection.map<List<ClassDocument>>(
      (QuerySnapshot snapshot) => snapshot.docs.map((DocumentSnapshot doc) {
        return ClassDocument.fromJson(doc.data() as Map<String, dynamic>);
      }).toList(),
    );
  }

  @override
  Stream<List<Student>> fetchStudentListById(List<StudentId> studentId) {
    final documentList = firestore
        .collection('student')
        .where('id', isEqualTo: studentId)
        .snapshots();
    return documentList.map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot document) {
          final json = document.data() as Map<String, dynamic>;
          return Student.fromJson(json);
        }).toList());
  }

  @override
  Stream<List<Teacher>> fetchTeacherListById(TeacherId teacherId) {
    final documentList = firestore
        .collection('student')
        .where('id', isEqualTo: teacherId)
        .snapshots();
    return documentList.map((QuerySnapshot snapshot) =>
        snapshot.docs.map((DocumentSnapshot document) {
          final json = document.data() as Map<String, dynamic>;
          return Teacher.fromJson(json);
        }).toList());
  }
}
