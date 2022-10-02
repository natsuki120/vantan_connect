import 'package:flutter/material.dart';
import '../atom/space_box.dart';
import '../atom/color_schemes.g.dart';
import '../molecule/style_by_platform.dart';
import '../organism/guidance_message.dart';

class DocumentByTime extends StatefulWidget {
  DocumentByTime({Key? key}) : super(key: key);

  @override
  State<DocumentByTime> createState() => _DocumentByTimeState();
}

class _DocumentByTimeState extends State<DocumentByTime> {
  String? isSelectedItem = '出席確認済み';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('9/29'),
          bottom: TabBar(
            tabs: [
              GuidanceMessage(
                mainText: '資料',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              ),
              GuidanceMessage(
                mainText: '出席確認',
                mainTextStyle:
                    titleSmall(FontWeight.w300, colorScheme.onBackground),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              itemCount: 5,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Center(child: Text('資料')),
                  ),
                );
              },
            ),
            Column(
              children: [
                SpaceBox(height: 30),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38.0),
                      child: GuidanceMessage(
                        mainText: isSelectedItem,
                        mainTextStyle: titleLarge(
                            FontWeight.w600, colorScheme.onBackground),
                      ),
                    ),
                    Spacer(flex: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text('出席確認済み'),
                            value: '出席確認済み',
                          ),
                          DropdownMenuItem(
                            child: Text('出席者'),
                            value: '出席者',
                          ),
                          DropdownMenuItem(
                            child: Text('欠席者'),
                            value: '欠席者',
                          ),
                          DropdownMenuItem(
                            child: Text('遅刻者'),
                            value: '遅刻者',
                          ),
                        ],
                        onChanged: (String? value) {
                          setState(() {
                            isSelectedItem = value;
                          });
                        },
                        value: isSelectedItem,
                      ),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('高橋夏輝'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
