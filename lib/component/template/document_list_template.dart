import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/organism/guidance_message.dart';
import 'package:vantan_connect/component/template/document_by_time_template.dart';

import '../molecule/style_by_platform.dart';

class DocumentList extends StatelessWidget {
  const DocumentList({Key? key}) : super(key: key);

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
                mainText: '資料一覧',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('授業詳細')),
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
                      Navigator.of(context).push<DocumentByTime>(
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
