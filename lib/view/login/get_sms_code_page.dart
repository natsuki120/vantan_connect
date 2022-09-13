import 'package:flutter/material.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/view/login/login_complete_page.dart';
import '../../component/atom/color_schemes.g.dart';
import '../signup/component/guidance_message.dart';
import '../verify_phone_number/component/input_sms_code_field.dart';
import '../verify_phone_number/component/return_previous_page_button.dart';

class GetSmsCodePage extends StatelessWidget {
  const GetSmsCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 25, right: 25),
        child: Column(
          children: [
            // ThreeIndicator(firstPercent: 1, secondPercent: 1, thirdPercent: 0),
            Guidance(),
            InputSmsCodeField(),
            SpaceBox(height: 47),
            GestureDetector(
              child: Center(
                child: Text(
                  '認証コードを送信',
                  style: TextStyle(color: Color.fromRGBO(0, 100, 148, 1)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<LoginCompletePage>(
                    builder: (_) => const LoginCompletePage(),
                  ),
                );
              },
            ),
            SpaceBox(height: 38),
            GestureDetector(
              child: Center(
                child: Text(
                  'パスワードを忘れた場合',
                  style: TextStyle(color: Color.fromRGBO(0, 100, 148, 1)),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute<LoginCompletePage>(
                    builder: (_) => const LoginCompletePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
