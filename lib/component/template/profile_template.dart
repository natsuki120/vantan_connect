import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/const_width_and_height.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/atom/tappable_text.dart';
import 'package:vantan_connect/component/molecule/row_text_with_background_color.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/page/timetable_page.dart';
import 'package:vantan_connect/component/template/class_info/class_detail_design_template.dart';

class ProfileTemplate extends StatelessWidget {
  const ProfileTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SpaceBox(height: 68),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/911d/d139/4b3991c2881eba05b1cff39043b89e74?Expires=1665964800&Signature=RM-eIjcaTmmT9zyfmgWTkMyBQa3DrfPu4GBpe0-8xbWBnRE6PRyPTFXKvumWOBfuU7TIVPVSbe3Dpb72K~r8SGJC747qroOJ5Vg3fYXOBBCkrWXEU648x5XZpcsnAMuPtN0w1hoMvQ2yMFDJ1SPToQ9Wc2QkT13Sccb54ciwqj4BzW695W9mLrfar3QmDkoKkxihIU7klpPRQXMoNBIygDGgLeuhA1xma5fTQorUXfYfQ8mZKnbg7ebXBZZZdn7fX~Q-h8r2QWvyoRHxyF5P4rbRubQsV4UhFE5kHuasBxa5vBGDfRn7VrqxNouF5UOTrpl0-g7fxjgZbLX85xtTnQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
          ),
          const SpaceBox(height: 62),
          Align(
            alignment: Alignment.topLeft,
            child: MainText(
              text: '履修しているクラス',
              textStyle: titleMedium(FontWeight.w600, colorScheme.onBackground),
            ),
          ),
          SpaceBox(height: heightUnderTitle),
          GestureDetector(
            child: const RowTextWithBackgroundColor(
                title: 'ベースクラス', description: 'Flutter', height: 72),
            onTap: () {
              Navigator.of(context).push<ClassDetailDesignTemplate>(
                MaterialPageRoute(
                  builder: (context) =>
                      const ClassDetailDesignTemplate(className: 'ベースクラス'),
                ),
              );
            },
          ),
          SpaceBox(height: heightBetweenEachBox),
          GestureDetector(
            child: const RowTextWithBackgroundColor(
                title: '選択クラス', description: 'PM Club', height: 72),
            onTap: () {
              Navigator.of(context).push<ClassDetailDesignTemplate>(
                MaterialPageRoute(
                  builder: (context) =>
                      const ClassDetailDesignTemplate(className: 'PM Club'),
                ),
              );
            },
          ),
          SpaceBox(height: heightBetweenEachBox),
          GestureDetector(
            child: const RowTextWithBackgroundColor(
                title: '選択クラス', description: 'マーケティング', height: 72),
            onTap: () {
              Navigator.of(context).push<ClassDetailDesignTemplate>(
                MaterialPageRoute(
                  builder: (context) =>
                      const ClassDetailDesignTemplate(className: 'マーケティング'),
                ),
              );
            },
          ),
          const SpaceBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: TappableText(
              text: '時間割',
              textStyle: labelLarge(FontWeight.w300, colorScheme.onBackground),
              voidCallback: () => Navigator.of(context).push<TimetablePage>(
                MaterialPageRoute(
                  builder: (context) => const TimetablePage(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
