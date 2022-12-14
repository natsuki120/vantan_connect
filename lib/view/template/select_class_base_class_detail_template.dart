import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/detail_text_in_organism.dart';
import 'package:vantan_connect/view/organism/title_with_select_class_screen.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../organism/title_and_content.dart';
import '../organism/horizontal_class_info_element.dart';
import '../token/color_schemes.g.dart';

class SelectClassBaseClassDetailTemplate extends StatelessWidget {
  const SelectClassBaseClassDetailTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleAndSelectClassScreen(
      title: 'UI/UXデザイン',
      children: [
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpaceBox(height: 24.h),
              // HorizontalClassInfoElement(
              //   text: '講師',
              //   iconData: Icons.person,
              //   info: ImageAndUserInfo(
              //     name: '高橋　夏輝',
              //     role: 'Flutterエンジニア',
              //   ),
              // ),
              SpaceBox(height: 34.h),
              HorizontalClassInfoElement(
                text: '単位時間',
                iconData: Icons.calendar_today_outlined,
                info: Text('9コマ'),
              ),
              SpaceBox(height: 34.h),
              HorizontalClassInfoElement(
                text: '単位認定条件',
                iconData: Icons.calendar_today_outlined,
                info: Text('提出物評価5/8 以上\n出席率85％以上'),
              ),
              SpaceBox(height: 40.h),
              DefaultTabController(
                length: 2,
                child: TabBar(
                  unselectedLabelColor: colorScheme.onBackground,
                  labelColor: colorScheme.primary,
                  tabs: [
                    Text('詳細'),
                    Text('スケジュール'),
                  ],
                ),
              ),
              SpaceBox(height: 40.h),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp),
          child: Column(
            children: [
              TitleAndContent(
                title: '概要',
                content: DetailTextInOrganism(
                  text:
                      'UI/UXデザインとはユーザー目線で製品やデザインを開発するためのスキル。ただしUIとUXは実は別物。UXは人間の怠惰を追求するための知識と言っても過言ではない。',
                  textStyle: bodyRegular(colorScheme.onBackground),
                ),
              ),
              SpaceBox(height: 40.h),
              TitleAndContent(
                title: 'ゴール',
                content: DetailTextInOrganism(
                  text:
                      'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
                  textStyle: bodyRegular(colorScheme.onBackground),
                ),
              ),
              SpaceBox(height: 40.h),
              TitleAndContent(
                title: '担当',
                content: Column(
                  children: [
                    // BorderBox(
                    //   radius: 12,
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: 16.sp,
                    //     vertical: 20.sp,
                    //   ),
                    //   child: ImageAndUserInfo(
                    //     name: '高橋夏輝',
                    //     role: 'Flutterエンジニア',
                    //   ),
                    // ),
                    SpaceBox(height: 8.h),
                    // BorderBox(
                    //   radius: 12,
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: 16.sp,
                    //     vertical: 20.sp,
                    //   ),
                    //   child: ImageAndUserInfo(
                    //     name: '高橋夏輝',
                    //     role: 'Flutterエンジニア',
                    //   ),
                    // ),
                  ],
                ),
              ),
              SpaceBox(height: 40.h),
              TitleAndContent(
                title: '授業で扱う内容',
                content: DetailTextInOrganism(
                  text:
                      '・統計学\n・機械学習\n・データビジュアライゼーション\n・データマーケティング\n・AI・プログラミング',
                  textStyle: bodyRegular(colorScheme.onBackground),
                ),
              ),
              SpaceBox(height: 318.h),
            ],
          ),
        ),
      ],
    );
  }
}
