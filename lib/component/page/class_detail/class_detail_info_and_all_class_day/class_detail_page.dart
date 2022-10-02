import 'package:flutter/material.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import '../../../atom/space_box.dart';
import '../../../atom/color_schemes.g.dart';
import '../../../organism/guidance_message.dart';

class ClassDetailInfoPage extends StatelessWidget {
  const ClassDetailInfoPage({Key? key, required this.classInfo})
      : super(key: key);

  final ClassState classInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          GuidanceMessage(
            mainText: classInfo.className,
            mainTextStyle:
                headLineSmall(FontWeight.w600, colorScheme.onBackground),
          ),
          Row(
            children: [
              GuidanceMessage(
                  mainText: '先生',
                  mainTextStyle:
                      labelLarge(FontWeight.w600, colorScheme.onBackground)),
              SpaceBox(width: 30),
              for (String teacher in classInfo.teacher)
                GuidanceMessage(
                  mainText: '$teacher, ',
                  mainTextStyle:
                      labelLarge(FontWeight.w600, colorScheme.onBackground),
                ),
            ],
          ),
          Row(
            children: [
              GuidanceMessage(
                  mainText: '授業タイプ',
                  mainTextStyle:
                      labelLarge(FontWeight.w600, colorScheme.onBackground)),
              SpaceBox(width: 30),
              GuidanceMessage(
                  mainText: classInfo.selectableBaseClass[0] == 'false'
                      ? 'ベースクラス'
                      : 'サブクラス',
                  mainTextStyle:
                      labelLarge(FontWeight.w600, colorScheme.onBackground)),
            ],
          ),
        ],
      ),
    );
  }
}
