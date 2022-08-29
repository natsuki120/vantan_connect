import 'package:flutter/material.dart';

import '../../../const/color_schemes.g.dart';
import '../../../const/style_by_platform.dart';

class GuidanceMessage extends StatelessWidget {
  const GuidanceMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            '認証コードを入力',
            style: headLineSmall(bold, colorScheme!.onBackground),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text(
            'アカウントに登録されている電話番号へコードを送信しました。送られてきた６桁の番号を入力してください。送信先：+81 070-0011-0001',
            style: bodyMedium(medium, colorScheme!.onBackground),
          ),
        ),
      ],
    );
  }
}
