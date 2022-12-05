import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class/value/class_teacher.dart';
import '../../domain/teacher/teacher.dart';

class FakeClassRepository extends IClassRepository {
  FakeFirebaseFirestore firestore = FakeFirebaseFirestore();

  FakeClassRepository(List<Class> classList) {
    for (int i = 0; i < classList.length; i++) {
      Class classInfo = classList[i];
      this.registerClass(classInfo);
    }
  }

  void registerClass(Class classInfo) {
    final collection = firestore
        .collection('all_class/VTA_class/2022/first_semester/all_class');
    collection.add(classInfo.toJson());
  }

  void registerMyClass(Class classInfo) {
    final document = firestore.doc('my_class/${classInfo.name}');
    document.set(classInfo.toJson());
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
  Future fetchTeacherInfo(ClassTeacher classTeacher) async {
    final document = await firestore
        .doc(
          '/private/v1/users/${classTeacher.id}/readOnly/userInfo',
        )
        .get();
    final json = document.data() as Map<String, dynamic>;
    return Teacher.fromJson(json);
  }

  @override
  Future<List<AttendanceBook>> fetchAttendanceBook(Class classInfo) async {
    final collection = await firestore.collection(
      'all_class/VTA_class/2022/first_semester/all_class/${classInfo.name}/document',
    );
    return collection.get().then(
          (QuerySnapshot snapshot) => snapshot.docs.map(
            (DocumentSnapshot documentSnapshot) {
              final json = documentSnapshot.data() as Map<String, dynamic>;
              return AttendanceBook.fromJson(json);
            },
          ).toList(),
        );
  }
}
