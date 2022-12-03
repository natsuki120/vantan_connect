import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';

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
    collection.add({
      'id': collection.doc().id,
      'name': classInfo.name,
      'overView': classInfo.overView,
      'goalPoint': classInfo.goalPoint,
      'selectableBaseClass': 'false',
      'teacher': classInfo.teacher,
      'frameCount': classInfo.frameCount,
      'goalRequirements': classInfo.goalRequirements,
      'baseClass': classInfo.baseClass,
      'classImgUrl': classInfo.classImgUrl,
      'student': classInfo.student,
    });
  }

  void registerMyClass(Class classInfo) {
    final collection = firestore.doc('my_class/${classInfo.id}');
    collection.set({
      'id': classInfo.id,
      'name': classInfo.name,
      'overView': classInfo.overView,
      'goalPoint': classInfo.goalPoint,
      'selectableBaseClass': 'false',
      'teacher': classInfo.teacher,
      'frameCount': classInfo.frameCount,
      'goalRequirements': classInfo.goalRequirements,
      'baseClass': classInfo.baseClass,
      'classImgUrl': classInfo.classImgUrl,
      'student': classInfo.student,
    });
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
}
