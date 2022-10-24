import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/atom/tappable_text.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/template/login/authentication_code_input_template.dart';
import 'package:vantan_connect/component/template/start_up/phone_number_verification_template.dart';
import '../../molecule/primary_color_button.dart';
import '../../organism/indicator.dart';

class LoginStartUpTemplate extends StatelessWidget {
  const LoginStartUpTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SpaceBox(height: 72),
            const ThreeIndicator(
              firstPercent: 1,
              secondPercent: 0,
              thirdPercent: 0,
            ),
            const SpaceBox(height: 64),
            GuidanceMessage(
              mainText: 'ログイン',
              mainTextStyle: headLineSmall(
                FontWeight.w600,
                colorScheme.onBackground,
              ),
              subText: '登録されている電話番号またはアカウント番号と、登録時に設定したパスワードを入力してください。',
              subTextStyle: bodyMedium(
                FontWeight.w300,
                colorScheme.onBackground,
              ),
            ),
            const SpaceBox(height: 42),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '電話番号　または　アカウント番号',
                  labelStyle: TextStyle(
                    color: colorScheme.onBackground.withOpacity(0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.outline),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.outline),
                  ),
                ),
              ),
            ),
            const SpaceBox(height: 32),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'パスワード',
                  labelStyle: TextStyle(
                    color: colorScheme.onBackground.withOpacity(0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.outline),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.outline),
                  ),
                ),
              ),
            ),
            const SpaceBox(height: 50),
            PrimaryColorButton(
              text: '本人確認へ',
              callback: () =>
                  Navigator.of(context).push<AuthenticationCodeInputTemplate>(
                MaterialPageRoute(
                  builder: (context) => const AuthenticationCodeInputTemplate(),
                ),
              ),
            ),
            const SpaceBox(height: 23),
            TappableText(
              text: 'パスワードを忘れた場合',
              textStyle: labelLarge(FontWeight.w300, Colors.blue),
              voidCallback: () {},
            ),
            const Spacer(flex: 4),
            TappableText(
              text: 'アカウントを作成',
              textStyle: labelLarge(FontWeight.w300, colorScheme.onBackground),
              voidCallback: () {
                Navigator.of(context)
                    .pushAndRemoveUntil<PhoneNumberVerificationTemplate>(
                        MaterialPageRoute(
                          builder: (context) =>
                              const PhoneNumberVerificationTemplate(),
                        ),
                        (route) => false);
              },
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
