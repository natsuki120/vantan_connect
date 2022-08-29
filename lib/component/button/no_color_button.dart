import 'package:flutter/material.dart';
import '../../const/color_schemes.g.dart';
import '../../view/verify_phone_number/verify_phone_number_page.dart';

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
              color: colorScheme!.onBackground,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute<VerifyPhoneNumberPage>(
              builder: (_) => const VerifyPhoneNumberPage(),
            ),
          );
        },
      ),
    );
  }
}
