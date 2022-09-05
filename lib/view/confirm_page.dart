import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/primary_color_button.dart';
import 'package:vantan_connect/component/molecule/indicator.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/const/style_by_platform.dart';
import '../const/color_schemes.g.dart';

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
            // PrimaryColorButton(text: '同意して登録', voidCallBack: Container()),
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
