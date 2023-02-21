import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../component/shared/single/riverpod/riverpod.dart';

class AuthRepository {
  AuthRepository(this._ref);
  final Ref _ref;

  Future<void> signInWithEmail(String email, String password) async {
    try {
      await _ref
          .read(firebaseAuthProvider)
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }
}
