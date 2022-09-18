import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/model/applying_class_state/applying_class_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import '../model/class_state/class_state.dart';

class ClassRepository {
  final db = FirebaseFirestore.instance;

  Stream<List<ClassState>> fetchClassInfoToProfile() {
    final collection = db
        .collection(
          '/public/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/class',
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

  Stream<List<ClassState>> fetchClassInfoToRegister() {
    final collection =
        db.collection('/all_class/VTA_class/2022/1G_students/1_term');
    return collection.snapshots().map<List<ClassState>>(
          (QuerySnapshot snapshot) => snapshot.docs
              .map(
                (DocumentSnapshot doc) =>
                    ClassState.fromJson(doc.data() as Map<String, dynamic>),
              )
              .toList(),
        );
  }

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

  // Future<void> MoveApplyingClassToAppliedCollection(ApplyingClassState applyingClassState){
  //   final doc =
  // }
}
