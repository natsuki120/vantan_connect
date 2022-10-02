import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import '../../component/atom/color_schemes.g.dart';
import '../../component/molecule/primary_color_button.dart';
import '../../component/molecule/style_by_platform.dart';

class LoginCompletePage extends StatelessWidget {
  const LoginCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 72),
            // ThreeIndicator(firstPercent: 1, secondPercent: 1, thirdPercent: 1),
            SpaceBox(height: 64),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'ログインが完了しました',
                // style: headLineSmall(bold, colorScheme!.onBackground),
              ),
            ),
            SpaceBox(height: 80),
            SizedBox(
                width: 459,
                height: 383,
                child: Image.asset('images/login_complete.png')),
            SpaceBox(height: 105),
            // PrimaryColorButton(text: '始める', nextPage: Container()),
          ],
        ),
      ),
    );
  }
}
