import 'package:flutter/material.dart';
import 'package:vantan_connect/const/space_box.dart';
import '../../component/guidance_message.dart';
import '../../component/molecule/common/indicator.dart';
import '../login/login_page.dart';
import 'component/get_sms_code_button.dart';
import 'component/input_phone_number.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SpaceBox(height: 72),
            const FourIndicator(
              firstPercent: 1,
              secondPercent: 0,
              thirdPercent: 0,
              forthPercent: 0,
            ),
            GuidanceMessage(
              mainText: '電話番号の照合',
              subText: '入学した際にバンタンへ登録された電話番号を入力してください。入力された番号宛に認証コードを送信します。',
            ),
            SpaceBox(height: 104),
            InputPhoneNumber(),
            SpaceBox(height: 32),
            GetSmsCodeButton(),
            SpaceBox(height: 263),
            Center(
              child: GestureDetector(
                child: Text('ログインする'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<LoginPage>(
                      builder: (_) => LoginPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
