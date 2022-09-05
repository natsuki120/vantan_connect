import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user_state/user_state.dart';

final db = FirebaseFirestore.instance;

Future<void> registerUserInfo(String userName) async {
  final doc = db.doc('private/v1/users/$userName/readOnly/userInfo');
  await doc.set(<String, dynamic>{'name': userName});
}

Future<Stream<UserState>> fetchUserInfo(String uid) async {
  final doc = db
      .doc('private/v1/users/$uid/readOnly/userInfo/class/PHP')
      .snapshots()
      .map((DocumentSnapshot documentSnapshot) {
    final data = documentSnapshot.data() as Map<String, dynamic>;
    return UserState.fromJson(data);
  });
  return doc;
}

Future<void> sendAttendanceState(String uid) async {
  final doc = db.doc('private/v1/users/$uid/readOnly/userInfo/class/PHP');
  await doc.update(<String, dynamic>{'attendedDay': FieldValue.increment(1)});
}

final futureProvider = FutureProvider<UserState>(
  (ref) async {
    final doc = await db
        .doc(
            '/private/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/class/PHP')
        .get();
    final data = doc.data() as Map<String, dynamic>;
    return UserState.fromJson(data);
  },
);
