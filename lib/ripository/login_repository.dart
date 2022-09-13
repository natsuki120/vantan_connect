import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  Future<void> findPhoneNumber(num phoneNumber) async {
    try {
      await FirebaseFirestore.instance
          .doc('/private/users/$phoneNumber/readOnly/')
          .get();
    } on FirebaseException catch (error) {
      print(error);
    }
  }
}
