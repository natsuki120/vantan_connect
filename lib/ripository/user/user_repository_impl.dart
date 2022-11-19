import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:vantan_connect/ripository/user/user_repository.dart';

import '../../entity/user/user_state.dart';

class UserRepositoryImpl implements UserRepository {
  final db = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;

  @override
  Future<bool> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> registerUserInfo(String userName) async {
    final doc = db.doc('private/v1/users/$userName/readOnly/userInfo');
    await doc.set(<String, dynamic>{'name': userName});
  }

  @override
  Future<Stream<UserState>> fetchUserInfo(String uid) async {
    final doc = db
        .doc('public/v1/users/$uid/readOnly/userInfo/')
        .snapshots()
        .map((DocumentSnapshot documentSnapshot) {
      final data = documentSnapshot.data() as Map<String, dynamic>;
      return UserState.fromJson(data);
    });
    return doc;
  }

  @override
  Future<void> sendAttendanceState(String uid) async {
    final doc = db.doc('private/v1/users/$uid/readOnly/userInfo/class/PHP');
    await doc.update(<String, dynamic>{'attendedDay': FieldValue.increment(1)});
  }

  @override
  Future<String> sendUserImageToStorage(File imageFile) async {
    final putUserImage = await storage
        .ref('public/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/writeOnly/userInfo/')
        .putFile(imageFile);
    return putUserImage.ref.getDownloadURL();
  }

  @override
  Future<void> updateUserInfo(UserState userState) async {
    final doc = db
        .doc('public/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/');
    await doc.update(userState.toJson());
  }

  @override
  Future<void> sendAttendance(UserState userState) async {
    final doc = db
        .collection(
          '/public/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/class/HGoTDndpSTSgpwHcW32q/TuesDay/',
        )
        .doc();
    await doc.set(<String, dynamic>{
      'attendanceStatus': '出席',
      'recordTime': '${DateTime.now().hour}:${DateTime.now().minute}',
    });
  }

  @override
  Future<void> sendAttendanceStatus(
      UserState userState, String status, String? reason) async {
    final doc = db
        .collection(
          '/public/v1/users/${userState.id}/readOnly/userInfo/class/Flutter/Hl20bsu6KzH88G8t0ANb/',
        )
        .doc();
    await doc.set(<String, dynamic>{
      'attendanceStatus': status,
      'recodeTime': '${DateTime.now().hour}:${DateTime.now().minute}',
      'reason': reason,
    });
  }

  @override
  Future<void> sendAbsence(UserState userState) async {
    final doc = db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/${DateTime.now().month}${DateTime.now().day}/absence',
    );
    try {
      await doc.update(<String, dynamic>{
        'students': FieldValue.arrayUnion(<Map<String, dynamic>>[
          <String, dynamic>{'name': userState.name}
        ])
      });
    } on FirebaseException catch (e) {
      await doc.set(<String, dynamic>{
        'students': FieldValue.arrayUnion(<Map<String, dynamic>>[
          <String, dynamic>{'name': userState.name}
        ])
      });
    }
  }

  @override
  Future<void> sendLateness(UserState userState) async {
    final doc = db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/${DateTime.now().month}${DateTime.now().day}/lateness',
    );
    try {
      await doc.update(<String, dynamic>{
        'students': FieldValue.arrayUnion(<Map<String, dynamic>>[
          <String, dynamic>{'name': userState.name}
        ])
      });
    } on FirebaseException catch (e) {
      await doc.set(<String, dynamic>{
        'students': FieldValue.arrayUnion(<Map<String, dynamic>>[
          <String, dynamic>{'name': userState.name}
        ])
      });
    }
  }
}
