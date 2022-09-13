import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';

UserState? userInfo;

class SignUpRepository {
  final db = FirebaseFirestore.instance;
  void findUserInfo(String uid, String name) {
    final doc = db.doc('/private/users/$uid/readOnly/');
    userInfo = UserState.fromJson(doc as Map<String, dynamic>);
  }
}

final signInProvider = Provider((ref) => SignUpRepository());
