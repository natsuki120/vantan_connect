import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/view/signup/component/input_phone_number.dart';
import 'package:vantan_connect/view/verify_phone_number/verify_phone_number_page.dart';

final _phoneNumberController =
    '${firstPhoneController.text}${secondPhoneController.text}${thirdPhoneController.text}';
final phoneNumber = '+81${_phoneNumberController}';
final smsCodeController =
    '$firstController$secondController$thirdController$forthController$fifthController$sixthController';

final firstController = TextEditingController();
final secondController = TextEditingController();
final thirdController = TextEditingController();
final forthController = TextEditingController();
final fifthController = TextEditingController();
final sixthController = TextEditingController();

class SignInService {
  Future<void> verifyPhoneNumber(BuildContext context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        Navigator.of(context).push(
          MaterialPageRoute<VerifyPhoneNumberPage>(
            builder: (_) => VerifyPhoneNumberPage(),
          ),
        );
        print(_phoneNumberController);
      },
      codeSent: (String verificationId, int? resendToken) async {
        await Navigator.of(context).pushReplacement(
          MaterialPageRoute<VerifyPhoneNumberPage>(
            builder: (_) => const VerifyPhoneNumberPage(),
          ),
        );
        final credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCodeController,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}

final signInService = Provider((ref) => SignInService());
