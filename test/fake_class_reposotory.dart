import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/entity/class/class.dart';
import 'package:vantan_connect/entity/user/user_state.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';

class FakeClassRepository extends ClassRepository {
  @override
  Future<void> applyClassToStuff(
      UserState userState, List<Class> classStateList) {
    // TODO: implement applyClassToStuff
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchBaseClassInfo() {
    // TODO: implement fetchBaseClassInfo
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchClassInfoToConfirmDetail() {
    // TODO: implement fetchClassInfoToConfirmDetail
    final firestore = FakeFirebaseFirestore();
    firestore.collection('test').add({'name': 'UI/UX'});
    final collection = firestore.collection('test').snapshots();
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
  Stream<List<Class>> fetchClassInfoWhichStudentRegistered() {
    // TODO: implement fetchClassInfoWhichStudentRegistered
    throw UnimplementedError();
  }

  @override
  Stream<List<Class>> fetchSelectionClassInfo() {
    // TODO: implement fetchSelectionClassInfo
    throw UnimplementedError();
  }
}
