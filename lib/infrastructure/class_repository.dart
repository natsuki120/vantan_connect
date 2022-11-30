import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/class/class.dart';

class ClassRepository extends IClassRepository {
  ClassRepository({required this.db}) : super();
  final db;

  @override
  Stream<List<Class>> fetchClassInfo() {
    final collection = db
        .collection(
          '/private/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/class',
        )
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
  Stream<List<Class>> fetchBaseClass() {
    final collection = db
        .collection('/all_class/VTA_class/2022/first_semester/all_class')
        .where('selectableBaseClass', arrayContains: 'false')
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
        .where('baseClass', isEqualTo: baseClass)
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
}
