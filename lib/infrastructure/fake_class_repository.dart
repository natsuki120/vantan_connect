import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';

import '../domain/class_document/class_document.dart';

class FakeClassRepository extends IClassRepository {
  FakeFirebaseFirestore firestore = FakeFirebaseFirestore();

  FakeClassRepository(
      List<Class> classList, List<ClassDocument> classDocumentList) {
    for (int i = 0; i < classList.length; i++) {
      Class classInfo = classList[i];
      this.registerClass(classInfo);
    }
    for (var document in classDocumentList) {
      this.registerDocument(document);
    }
  }

  void registerClass(Class classInfo) {
    final collection = firestore.doc(
        'all_class/VTA_class/2022/first_semester/all_class/${classInfo.name}');
    collection.set({
      'id': collection.id,
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
      'document': classInfo.document,
    });
  }

  void registerMyClass(Class classInfo) {
    final collection = firestore.doc('my_class/${classInfo.id}');
    collection.set(classInfo.toJson());
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
}
