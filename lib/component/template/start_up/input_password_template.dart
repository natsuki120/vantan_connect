import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/organism/back_button_text_with_icon.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/template/start_up/confirmation_user_info_template.dart';
import '../../molecule/primary_color_button.dart';
import '../../organism/indicator.dart';

class InputPassWordTemplate extends StatelessWidget {
  const InputPassWordTemplate({Key? key}) : super(key: key);

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
              secondPercent: 1,
              thirdPercent: 1,
              forthPercent: 0,
            ),
            const SpaceBox(height: 64),
            GuidanceMessage(
              mainText: 'パスワードを入力',
              mainTextStyle: headLineSmall(
                FontWeight.w600,
                colorScheme.onBackground,
              ),
              subText: 'ログイン時に必要となるパスワードの設定をしてください。',
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
            SpaceBox(height: 32),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'パスワード確認用',
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
              text: '次へ',
              callback: () =>
                  Navigator.of(context).push<ConfirmationUserInfoTemplate>(
                MaterialPageRoute(
                  builder: (context) => ConfirmationUserInfoTemplate(),
                ),
              ),
            ),
            Spacer(flex: 4),
            BackButtonTextWithIcon(),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
