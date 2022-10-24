import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/atom/primary_color_button.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/vantan_life.dart';
import '../../organism/indicator.dart';

class CompleteLoginTemplate extends StatelessWidget {
  const CompleteLoginTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SpaceBox(height: 72),
          const ThreeIndicator(
            firstPercent: 1,
            secondPercent: 1,
            thirdPercent: 1,
          ),
          // const SpaceBox(height: 64),
          MainText(
            text: 'ログインが完了しました',
            textStyle: headLineSmall(FontWeight.w600, colorScheme.onBackground),
          ),
          const SpaceBox(height: 80),
          Image.asset('images/login_complete.png'),
          const Spacer(flex: 2),
          const PrimaryColorButton(text: '始める', nextPage: VantanLife()),
          const Spacer()
        ],
      ),
    );
  }
}
