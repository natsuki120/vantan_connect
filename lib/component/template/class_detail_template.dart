import 'package:flutter/material.dart';
import '../atom/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../organism/guidance_message.dart';
import 'document_by_time_template.dart';

class ClassDetailTemplate extends StatelessWidget {
  ClassDetailTemplate({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  GuidanceMessage(
                    mainText: 'ここに授業の名前が書かれます',
                    mainTextStyle: headLineSmall(
                        FontWeight.w600, colorScheme.onBackground),
                  ),
                  Row(
                    children: [
                      GuidanceMessage(
                          mainText: '先生',
                          mainTextStyle: labelLarge(
                              FontWeight.w600, colorScheme.onBackground)),
                      SpaceBox(width: 30),
                      GuidanceMessage(
                          mainText: 'たなかたろう',
                          mainTextStyle: labelLarge(
                              FontWeight.w600, colorScheme.onBackground)),
                    ],
                  ),
                  Row(
                    children: [
                      GuidanceMessage(
                          mainText: '授業タイプ',
                          mainTextStyle: labelLarge(
                              FontWeight.w600, colorScheme.onBackground)),
                      SpaceBox(width: 30),
                      GuidanceMessage(
                          mainText: 'ベースタイプ',
                          mainTextStyle: labelLarge(
                              FontWeight.w600, colorScheme.onBackground)),
                    ],
                  ),
                ],
              ),
            ),
            GridView.builder(
              itemCount: 100,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(child: Text('9/29')),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => DocumentByTime(),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
