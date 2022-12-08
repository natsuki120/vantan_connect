import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';

class ClassRepository extends IClassRepository {
  ClassRepository() : super();
  final db = FirebaseFirestore.instance;

  @override
  Stream<List<Class>> fetchClassInfo() {
    final collection = db.collection('my_class').snapshots();
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
  Stream<List<Class>> fetchBaseClass() {
    final collection = db
        .collection('/all_class/VTA_class/2022/first_semester/all_class')
        .where('baseClass', arrayContains: '')
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
  Stream<List<Class>> fetchSelectableClass(Class baseClass) {
    final collection = db
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

  void registerMyClass(Class classInfo) {
    final collection = db.doc('my_class/${classInfo.id}');
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
  void deleteClass(Class classInfo) {
    db.doc('my_class/${classInfo.id}').delete();
  }

  @override
  void deleteAllClass(List<Class> classList) {
    for (var classInfo in classList) {
      db.doc('my_class/${classInfo.id}').delete();
    }
  }

  @override
  Stream<List<ClassDocument>> fetchClassDocument(Class classInfo) {
    final collection = db
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
}
