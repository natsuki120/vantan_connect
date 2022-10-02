import 'package:flutter/material.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_info_and_all_class_day/all_class_day_page.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_info_and_all_class_day/class_detail_page.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
import '../../../atom/color_schemes.g.dart';
import '../../../molecule/style_by_platform.dart';
import '../../../organism/guidance_message.dart';

class ClassDetailAndAllClassDayPage extends StatelessWidget {
  ClassDetailAndAllClassDayPage({Key? key, required this.classInfo})
      : super(key: key);

  final ClassState classInfo;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('資料一覧'),
          bottom: TabBar(
            tabs: [
              GuidanceMessage(
                mainText: '授業詳細',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              ),
              GuidanceMessage(
                mainText: '開催日時',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ClassDetailInfoPage(classInfo: classInfo),
            AllClassDayPage(classInfo: classInfo, crossAxisCount: 2)
          ],
        ),
      ),
    );
  }
}
