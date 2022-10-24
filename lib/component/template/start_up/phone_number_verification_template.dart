import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/molecule/tappable_text.dart';
import 'package:vantan_connect/component/organism/circle_text_field.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/template/start_up/authentication_code_input_template.dart';
import '../../molecule/primary_color_button.dart';
import '../../organism/indicator.dart';

class PhoneNumberVerificationTemplate extends StatelessWidget {
  const PhoneNumberVerificationTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SpaceBox(height: 72),
            const FourIndicator(
              width: 93,
              spaceWidth: 2,
              firstPercent: 1,
              secondPercent: 0,
              thirdPercent: 0,
              forthPercent: 0,
            ),
            const SpaceBox(height: 64),
            GuidanceMessage(
              mainText: '電話番号の認証',
              mainTextStyle: headLineSmall(
                FontWeight.w600,
                colorScheme.onBackground,
              ),
              subText: '入学した際にバンタンへ登録された電話番号を入力してください。入力された番号宛に認証コードを送信します。',
              subTextStyle: bodyMedium(
                FontWeight.w300,
                colorScheme.onBackground,
              ),
            ),
            const SpaceBox(height: 120),
            CircleTextField(
              firstBoxWidth: 62,
              width: 82,
              height: 50,
              fistMaxLength: 3,
              maxLength: 4,
              radius: 4,
              color: colorScheme.outline,
              firstCNTL: TextEditingController(),
              secondCNTL: TextEditingController(),
              thirdCNTL: TextEditingController(),
              firstNextFocus: true,
              secondNextFocus: true,
              thirdNextFocus: false,
            ),
            const SpaceBox(height: 38),
            PrimaryColorButton(
              text: '次へ',
              callback: () =>
                  Navigator.of(context).push<AuthenticationCodeInputTemplate>(
                MaterialPageRoute(
                  builder: (context) => AuthenticationCodeInputTemplate(),
                ),
              ),
            ),
            Spacer(flex: 4),
            TappableText(
              text: 'ログインする',
              textStyle: labelLarge(FontWeight.w300, colorScheme.onBackground),
              voidCallback: () => Navigator.of(context).pop(),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
