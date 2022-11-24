import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:vantan_connect/ripository/class/class_repository.dart';
import '../../data_model//class/class.dart';
import '../../data_model/user/user_state.dart';

class ClassRepositoryImpl implements ClassRepository {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Stream<List<Class>> fetchClassInfoWhichStudentRegistered() {
    final collection = db
        .collection(
          '/public/v1/users/${auth.currentUser!.uid}/readOnly/userInfo/class',
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
  Stream<List<Class>> fetchClassInfoToConfirmDetail() {
    final collection = db
        .collection(
          '/all_class/VTA_class/2022/first_semester/all_class',
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
  Future<void> applyClassToStuff(
      UserState userState, List<Class> classStateList) async {
    final doc = db
        .collection(
          'public/v1/users/ypaeLWCnEfbHNlEiJcJfIB7Eh893/readOnly/class/applyingClass/',
        )
        .doc();
    await doc.set(<String, dynamic>{
      'uid': userState.id,
      'name': userState.name,
      'userImagePath': userState.userImagePath,
      // 'className': [...classStateList.map((classState) => classState.className)]
    });
  }

  @override
  Stream<List<Class>> fetchBaseClassInfo() {
    final collection = db
        .collection(
          '/all_class/VTA_class/2022/first_semester/all_class',
        )
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
  Stream<List<Class>> fetchSelectionClassInfo() {
    final collection = db
        .collection(
          '/all_class/VTA_class/2022/first_semester/all_class',
        )
        .where('selectableBaseClass', arrayContains: 'true')
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
