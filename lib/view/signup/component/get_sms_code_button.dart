import 'package:flutter/material.dart';
import 'package:vantan_connect/service/sign_in_service.dart';
import '../../../component/atom/color_schemes.g.dart';

class GetSmsCodeButton extends StatelessWidget {
  const GetSmsCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: colorScheme.primary,
          onPrimary: colorScheme.onPrimary,
        ),
        onPressed: () => SignInService().verifyPhoneNumber(context),
        child: const Text(
          '次へ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
