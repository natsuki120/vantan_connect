import 'package:flutter/material.dart';
import 'package:vantan_connect/component/guidance_message.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/view/confirm_page.dart';
import 'package:vantan_connect/view/verify_phone_number/component/return_previous_page_button.dart';
import '../component/molecule/common/indicator.dart';
import '../const/color_schemes.g.dart';

class InputPasswordPage extends StatefulWidget {
  const InputPasswordPage({Key? key}) : super(key: key);

  @override
  State<InputPasswordPage> createState() => _InputPasswordPageState();
}

class _InputPasswordPageState extends State<InputPasswordPage> {
  bool firstVisibility = true;
  bool secondVisibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 72),
            const FourIndicator(
              firstPercent: 1,
              secondPercent: 1,
              thirdPercent: 1,
              forthPercent: 0,
            ),
            SpaceBox(height: 64),
            GuidanceMessage(
              mainText: 'パスワードを入力',
              subText: 'ログイン時に必要となるパスワードの設定をしてください。',
            ),
            SpaceBox(height: 42),
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
                      firstVisibility = !firstVisibility;
                    });
                  },
                  icon: Icon(firstVisibility
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
              ),
              obscureText: firstVisibility,
            ),
            SpaceBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                labelText: '確認用パスワード',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorScheme!.outline),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      secondVisibility = !secondVisibility;
                    });
                  },
                  icon: Icon(secondVisibility
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
              ),
              obscureText: secondVisibility,
            ),
            SpaceBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: colorScheme!.primary,
                  onPrimary: colorScheme!.onPrimary,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute<ConfirmPage>(
                      builder: (_) => ConfirmPage()));
                },
                child: const Text(
                  '次へ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SpaceBox(height: 263),
            Center(
              child: GestureDetector(
                child: const Text('< 戻る'),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
            SpaceBox(height: 73)
          ],
        ),
      ),
    );
  }
}
