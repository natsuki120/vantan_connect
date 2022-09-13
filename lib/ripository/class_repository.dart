import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/class_state/class_state.dart';

class ClassRepository {
  final db = FirebaseFirestore.instance;

  Stream fetchClassInfo() {
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
}
