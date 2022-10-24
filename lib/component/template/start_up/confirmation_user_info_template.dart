import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/atom/primary_color_button.dart';
import 'package:vantan_connect/component/molecule/row_text_with_background_color.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/organism/back_button_text_with_icon.dart';
import 'package:vantan_connect/vantan_life.dart';
import '../../atom/const_width_and_height.dart';
import '../../molecule/column_text_with_backrgroud_color.dart';
import '../../organism/indicator.dart';

class ConfirmationUserInfoTemplate extends StatelessWidget {
  const ConfirmationUserInfoTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceBox(height: 72),
            const FourIndicator(
              width: 93,
              spaceWidth: 2,
              firstPercent: 1,
              secondPercent: 1,
              thirdPercent: 1,
              forthPercent: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SpaceBox(height: 64),
                    MainText(
                      text: 'ご確認ください',
                      textStyle: headLineSmall(
                        FontWeight.w600,
                        colorScheme.onBackground,
                      ),
                    ),
                    SpaceBox(height: heightBetweenEachTitle),
                    MainText(
                      text: '学内情報',
                      textStyle: titleMedium(
                          FontWeight.w600, colorScheme.onBackground),
                    ),
                    SpaceBox(height: heightUnderTitle),
                    RowTextWithBackgroundColor(
                      title: '名前',
                      description: '山田太郎',
                      height: rowBoxHeight,
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                    RowTextWithBackgroundColor(
                      title: '学科',
                      description: 'テックフォード',
                      height: rowBoxHeight,
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                    RowTextWithBackgroundColor(
                      title: '入学期',
                      description: '2学期',
                      height: rowBoxHeight,
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                    RowTextWithBackgroundColor(
                      title: '名前',
                      description: '山田太郎',
                      height: rowBoxHeight,
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                    RowTextWithBackgroundColor(
                      title: 'コース',
                      description: 'IT総合 3年制',
                      height: rowBoxHeight,
                    ),
                    SpaceBox(height: heightBetweenEachTitle),
                    MainText(
                      text: '登録情報',
                      textStyle: titleMedium(
                          FontWeight.w600, colorScheme.onBackground),
                    ),
                    SpaceBox(height: heightUnderTitle),
                    RowTextWithBackgroundColor(
                      title: '電話番号',
                      description: '080-0011-1111',
                      height: 72,
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                    ColumnTextWithBackgroundColor(
                      title: 'パスワード',
                      description: 'asdfghjklqwertyuiop',
                      height: columnBoxHeight,
                    ),
                    SpaceBox(height: heightBetweenEachTitle),
                    MainText(
                      text: '利用規約・プライバシーポリシー',
                      textStyle: titleMedium(
                          FontWeight.w600, colorScheme.onBackground),
                    ),
                    SpaceBox(height: heightUnderTitle),
                    ColumnTextWithBackgroundColor(
                      title: '利用規約',
                      description: '利用規約をご確認の上、チェックをつけ同意してください。',
                      height: 128,
                    ),
                    SpaceBox(height: heightBetweenEachBox),
                    ColumnTextWithBackgroundColor(
                      title: 'プライバシーポリシー',
                      description: 'プライバシーポリシーをご確認の上、チェックをつけ同意してください。',
                      height: 128,
                    ),
                    SpaceBox(height: 40),
                    PrimaryColorButton(text: '同意して登録', nextPage: VantanLife()),
                    SpaceBox(height: 20),
                    BackButtonTextWithIcon(),
                    SpaceBox(height: 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
