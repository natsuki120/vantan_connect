import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/molecule/title_message.dart';
import 'package:vantan_connect/view/organism/custom_tab_bar_which_has_primary_text_color.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../token/space_box.dart';
import '../organism/class_card.dart';

class ConfirmAllMyClassTemplate extends StatelessWidget {
  const ConfirmAllMyClassTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTabBarWhichHasPrimaryTextColor(
      tabLength: 1,
      title: TitleMessage(
        text: '授業一覧',
        textStyle: headerMedium(colorScheme.onBackground),
      ),
      tabChildren: [
        Tab(text: '選択した授業'),
        Tab(text: '全ての授業'),
      ],
      tabBarChildren: [],
    );
  }
}
