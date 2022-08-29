import 'package:firebase_auth/firebase_auth.dart';
import 'package:vantan_connect/ripository/login_repository.dart';

class LoginService {
  Future<void> logInUser(num phoneNumber) async {
    await LoginRepository().findPhoneNumber(phoneNumber);
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+81$phoneNumber',
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
