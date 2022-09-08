import 'package:flutter/material.dart';
import '../../../component/atom/color_schemes.g.dart';
import '../../../component/molecule/style_by_platform.dart';

class GuidanceMessage extends StatelessWidget {
  const GuidanceMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            '認証コードを入力してください',
            style: headLineSmall(bold, colorScheme!.onBackground),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            '{入力した電話番号}へコードを送信しました。送られてきた6桁の番号を入力してください。',
            style: bodyMedium(medium, colorScheme!.onBackground),
          ),
        ),
      ],
    );
  }
}
