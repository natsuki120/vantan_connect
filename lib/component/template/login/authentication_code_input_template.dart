import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/tappable_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/organism/back_button_text_with_icon.dart';
import 'package:vantan_connect/component/organism/input_authentication_code.dart';
import 'package:vantan_connect/component/template/login/complete_login_template.dart';
import 'package:vantan_connect/component/template/start_up/input_password_template.dart';
import 'package:vantan_connect/view/login/login_complete_page.dart';
import '../../organism/guidance_message.dart';
import '../../organism/indicator.dart';

class AuthenticationCodeInputTemplate extends StatelessWidget {
  const AuthenticationCodeInputTemplate({super.key});

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
              secondPercent: 1,
              thirdPercent: 0,
            ),
            const SpaceBox(height: 64),
            GuidanceMessage(
              mainText: '認証コードを入力',
              mainTextStyle: headLineSmall(
                FontWeight.w600,
                colorScheme.onBackground,
              ),
              subText:
                  'アカウントに登録されている電話番号へコードを送信しました。送られてきた６桁の番号を入力してください。送信先：+81 070-0011-0001',
              subTextStyle: bodyMedium(
                FontWeight.w300,
                colorScheme.onBackground,
              ),
            ),
            const SpaceBox(height: 104),
            const InputAuthenticationCode(),
            const SpaceBox(height: 47),
            TappableText(
              text: '認証コードを再送信',
              textStyle: labelLarge(FontWeight.w300, Colors.blue),
              voidCallback: () =>
                  Navigator.of(context).push<InputPassWordTemplate>(
                MaterialPageRoute(
                  builder: (context) => const LoginCompletePage(),
                ),
              ),
            ),
            const Spacer(flex: 4),
            const BackButtonTextWithIcon(),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
