import 'package:flutter/material.dart';
import '../../../const/color_schemes.g.dart';
import '../../input_password_page.dart';
import '../verify_phone_number_page.dart';

class ResendSmsCode extends StatelessWidget {
  const ResendSmsCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: GestureDetector(
        child: SizedBox(
          width: double.infinity,
          child: Text(
            '認証コードを再送信',
            style: TextStyle(
              color: Color.fromRGBO(0, 100, 148, 1),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<VerifyPhoneNumberPage>(
              builder: (_) => InputPasswordPage(),
            ),
          );
        },
      ),
    );
  }
}
