import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user_state/user_state.dart';

UserState? userInfo;

class SignUpRepository {
  void findUserInfo(String uid, String name) {
    final db = FirebaseFirestore.instance;
    final doc = db.doc('/private/users/$uid/readOnly/');
    userInfo = UserState.fromJson(doc as Map<String, dynamic>);
  }
}

final signInProvider = Provider((ref) => SignUpRepository());
