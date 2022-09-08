import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:vantan_connect/component/atom/common/primary_color_button.dart';
import 'package:vantan_connect/component/molecule/common/indicator.dart';
=======
import 'package:vantan_connect/component/organism/indicator.dart';
>>>>>>> a341bdf (✨ create profile page and function edit profile)
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import '../component/atom/color_schemes.g.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBox(height: 72),
            FourIndicator(
              firstPercent: 1,
              secondPercent: 1,
              thirdPercent: 1,
              forthPercent: 1,
            ),
            SpaceBox(height: 64),
            Text(
              'ご確認ください',
              style: headLineSmall(bold, colorScheme!.onBackground),
            ),
            SpaceBox(height: 510),
            PrimaryColorButton(text: '同意して登録', nextPage: Container()),
            SpaceBox(height: 23),
            Center(
              child: GestureDetector(
                child: Text('< 戻る'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SpaceBox(height: 73),
          ],
        ),
      ),
    );
  }
}
