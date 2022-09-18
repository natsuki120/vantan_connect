import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/absence_student_state/absence_student_state.dart';
import 'package:vantan_connect/model/attendance_student_state/attendance_student_state.dart';
import 'package:vantan_connect/model/late_student_state/late_student_state.dart';
import '../model/user_state/user_state.dart';

final db = FirebaseFirestore.instance;
final storage = FirebaseStorage.instance;

class UserRepository {
  Future<void> registerUserInfo(String userName) async {
    final doc = db.doc('private/v1/users/$userName/readOnly/userInfo');
    await doc.set(<String, dynamic>{'name': userName});
  }

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

  Future fetchAttendanceUser() async {
    final doc = await db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/918/attendance',
    );
    return doc.snapshots().map((DocumentSnapshot documentSnapshot) {
      if (!documentSnapshot.exists) {
        doc.set({});
      }
      final data = documentSnapshot.data() as Map<String, dynamic>;
      return AttendanceStudentState.fromJson(data);
    });
  }

  Future fetchAbsenceUser() async {
    final doc = db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/918/absence',
    );
    await doc.set({});
    return doc.snapshots().map((DocumentSnapshot documentSnapshot) {
      if (!documentSnapshot.exists) {
        doc.set({});
      }
      final data = documentSnapshot.data() as Map<String, dynamic>;
      return AbsenceStudentState.fromJson(data);
    });
  }

  Future fetchLatenessUser() async {
    final doc = await db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/918/lateness',
    );
    await doc.set({});
    return doc.snapshots().map((DocumentSnapshot documentSnapshot) {
      if (!documentSnapshot.exists) {
        doc.set({});
      }
      final data = documentSnapshot.data() as Map<String, dynamic>;
      return LateStudentState.fromJson(data);
    });
  }

  Future<void> sendAttendanceState(String uid) async {
    final doc = db.doc('private/v1/users/$uid/readOnly/userInfo/class/PHP');
    await doc.update(<String, dynamic>{'attendedDay': FieldValue.increment(1)});
  }

  Future<String> sendUserImageToStorage(File imageFile) async {
    final putUserImage = await storage
        .ref('public/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/writeOnly/userInfo/')
        .putFile(imageFile);
    return putUserImage.ref.getDownloadURL();
  }

  Future<void> updateUserInfo(UserState userState) async {
    final doc = db
        .doc('public/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/');
    await doc.update(userState.toJson());
  }

  Future<void> sendAttendance(UserState userState) async {
    final doc = db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/${DateTime.now().month}${DateTime.now().day}/attendance',
    );
    try {
      await doc.update(<String, dynamic>{
        'students': FieldValue.arrayUnion([
          {'name': userState.name}
        ])
      });
    } on FirebaseException catch (e) {
      await doc.set(<String, dynamic>{
        'students': FieldValue.arrayUnion([
          {'name': userState.name}
        ])
      });
    }
  }

  Future<void> sendAbsence(UserState userState) async {
    final doc = db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/${DateTime.now().month}${DateTime.now().day}/absence',
    );
    try {
      await doc.update(<String, dynamic>{
        'students': FieldValue.arrayUnion([
          {'name': userState.name}
        ])
      });
    } on FirebaseException catch (e) {
      await doc.set(<String, dynamic>{
        'students': FieldValue.arrayUnion([
          {'name': userState.name}
        ])
      });
    }
  }

  Future<void> sendLateness(UserState userState) async {
    final doc = db.doc(
      '/all_class/VTA_class/2022/1G_students/1_term/5XkYnp3qFC8go7NAcxnz/${DateTime.now().month}${DateTime.now().day}/lateness',
    );
    try {
      await doc.update(<String, dynamic>{
        'students': FieldValue.arrayUnion([
          {'name': userState.name}
        ])
      });
    } on FirebaseException catch (e) {
      await doc.set(<String, dynamic>{
        'students': FieldValue.arrayUnion([
          {'name': userState.name}
        ])
      });
    }
  }
}

final futureProvider = FutureProvider<UserState>(
  (ref) async {
    final doc = await db
        .doc(
            '/private/v1/users/CS4PkGDqObM8cNT2k1dQwjvERxE2/readOnly/userInfo/class/PHP')
        .get();
    final data = doc.data();
    return UserState.fromJson(data!);
  },
);
