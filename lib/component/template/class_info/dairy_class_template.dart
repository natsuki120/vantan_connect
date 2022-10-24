import 'package:flutter/material.dart';
import '../../organism/custom_app_bar.dart';
import '../../organism/custom_grid_view.dart';
import '../../organism/custom_tab_bar.dart';

class DairyClassTemplate extends StatelessWidget {
  const DairyClassTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: CustomAppBar(
            text: '10/8',
            bottom: const CustomTabBar(firstText: '履修者一覧', secondText: '詳細'),
          ),
        ),
        body: TabBarView(
          children: [
            CustomGridView(
              itemCount: 10,
              crossAxisCount: 2,
              child: GestureDetector(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Text('10/8'),
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
