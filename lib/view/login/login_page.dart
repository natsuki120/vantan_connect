import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:vantan_connect/component/atom/common/primary_color_button.dart';
import 'package:vantan_connect/component/atom/common/visibility_icon.dart';
import 'package:vantan_connect/component/guidance_message.dart';
import 'package:vantan_connect/component/molecule/common/indicator.dart';
=======
import 'package:vantan_connect/component/molecule/visibility_icon.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/organism/indicator.dart';
>>>>>>> a341bdf (✨ create profile page and function edit profile)
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/view/login/get_sms_code_page.dart';
import 'package:vantan_connect/view/verify_phone_number/component/return_previous_page_button.dart';
import '../../component/atom/color_schemes.g.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 72),
            ThreeIndicator(
              firstPercent: 1,
              secondPercent: 0,
              thirdPercent: 0,
            ),
            GuidanceMessage(
              mainText: 'ログイン',
              subText: '登録されている電話番号またはアカウント番号と、登録時に設定したパスワードを入力してください',
            ),
            SpaceBox(height: 42),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '電話番号　または　アカウント番号',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorScheme!.outline),
                ),
              ),
            ),
            SpaceBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'パスワード',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorScheme!.outline),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  icon: Icon(
                      visibility ? Icons.visibility_off : Icons.visibility),
                ),
              ),
              obscureText: visibility,
            ),
            SpaceBox(height: 32),
            PrimaryColorButton(text: '本人確認へ', nextPage: GetSmsCodePage()),
            SpaceBox(height: 23),
            Center(
              child: GestureDetector(
                child: const Text(
                  'パスワードを忘れた場合',
                  style: TextStyle(color: Color.fromRGBO(0, 100, 148, 1)),
                ),
                onTap: () {},
              ),
            ),
            SpaceBox(height: 263),
            ReturnPreviousPageButton(),
          ],
        ),
      ),
    );
  }
}
