import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/class_detail_info.dart';
import 'package:vantan_connect/component/organism/custom_app_bar.dart';
import 'package:vantan_connect/component/organism/custom_grid_view.dart';
import 'package:vantan_connect/component/organism/custom_tab_bar.dart';

class ClassDetailByDayTemplate extends StatelessWidget {
  const ClassDetailByDayTemplate({super.key, required this.className});

  final String className;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(280),
          child: CustomAppBar(
            text: '一日分の詳細',
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Column(
                children: [
                  ClassDetailInfo(className: className),
                  const CustomTabBar(firstText: '出席簿', secondText: '授業資料'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(37.0),
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2,
                ),
                itemBuilder: (context, index) {
                  return Text('高橋夏輝');
                },
              ),
            ),
            CustomGridView(
              itemCount: 10,
              crossAxisCount: 2,
              child: GestureDetector(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: const Center(
                    child: Text('宿題'),
                  ),
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
