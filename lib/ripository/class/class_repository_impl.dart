import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vantan_connect/model/applying_class_state/applying_class_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';
import '../../model/class_state/class_state.dart';

class ClassRepositoryImpl implements ClassRepository {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Stream<List<ClassState>> fetchClassInfoWhichStudentRegistered() {
    final collection = db
        .collection(
          '/public/v1/users/${auth.currentUser!.uid}/readOnly/userInfo/class',
        )
        .snapshots();
    return collection.map<List<ClassState>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassState.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Stream<List<ClassState>> fetchClassInfoToConfirmDetail() {
    final collection = db
        .collection(
          '/all_class/VTA_class/2022/first_semester/all_class',
        )
        .snapshots();
    return collection.map<List<ClassState>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassState.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Future<void> applyClassToStuff(
      UserState userState, List<ClassState> classStateList) async {
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
  Stream<List<ApplyingClassState>> fetchApplyingClassInfo() {
    final collection = db.collection(
        '/public/v1/users/ypaeLWCnEfbHNlEiJcJfIB7Eh893/readOnly/class/applyingClass');
    return collection.snapshots().map<List<ApplyingClassState>>(
          (QuerySnapshot snapshot) => snapshot.docs
              .map(
                (DocumentSnapshot doc) => ApplyingClassState.fromJson(
                    doc.data() as Map<String, dynamic>),
              )
              .toList(),
        );
  }
}
