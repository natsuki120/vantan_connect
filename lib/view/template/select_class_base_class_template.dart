import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/template/select_class_base_class_detail.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/organism/class_card.dart';

class SelectClassBaseClassTemplate extends StatelessWidget {
  const SelectClassBaseClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleAndSelectClassScreen(
      title: 'ベースクラス一覧',
      children: [
        SpaceBox(height: 40.h),
        ClassCard(
          iconText: '9コマ',
          iconData: Icons.calendar_today,
          className: 'UI/UXデザイン実践クラス',
          description:
              'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
          primaryCallback: () {},
          onPrimaryCallback: () => NavigatorPush(
            context,
            page: SelectClassBaseClassDetailTemplate(),
          ),
        ),
        SpaceBox(height: 16.h),
        ClassCard(
          iconText: '9コマ',
          iconData: Icons.calendar_today,
          className: 'データサイエンスクラス',
          description:
              '様々なデータから知見や洞察を引き出し、ビジネスに付加価値を提供する。データの可視化(ビジュアライゼーション)が意外と重要。',
          primaryCallback: () {},
          onPrimaryCallback: () => NavigatorPush(
            context,
            page: SelectClassBaseClassDetailTemplate(),
          ),
        ),
      ],
    );
  }
}
