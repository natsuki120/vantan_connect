import 'package:flutter/material.dart';
import 'package:vantan_connect/view/signup/sign_up_page.dart';

class ReturnPreviousPageButton extends StatelessWidget {
  const ReturnPreviousPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: const Text('アカウントを作成する'),
        onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute<SignUpPage>(
            builder: (_) => const SignUpPage(),
          ),
        ),
      ),
    );
  }
}
