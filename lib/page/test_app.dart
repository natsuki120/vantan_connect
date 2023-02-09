import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/shared/token/color/color.dart';
import '/page/timetable.dart';

class TestApp extends HookWidget {
  TestApp({Key? key}) : super(key: key);

  static List<Widget> pageList = [
    TimeTablePage(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return Scaffold(
      body: pageList[selectedIndex.value],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border:
              Border(top: BorderSide(color: borderHighEmphasis, width: 1.0)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primary,
          unselectedItemColor: lowEmphasis.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.view_agenda, size: 21.sp), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart, size: 21.sp), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline, size: 21.sp), label: ''),
          ],
          currentIndex: selectedIndex.value,
          onTap: (index) => selectedIndex.value = index,
        ),
      ),
    );
  }
}
