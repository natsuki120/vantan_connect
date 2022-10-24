import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/page/timetable_page.dart';
import 'component/page/profile_page.dart';
import 'home_page.dart';

class VantanLife extends StatefulWidget {
  const VantanLife({super.key});

  @override
  State<VantanLife> createState() => _VantanLifeState();
}

class _VantanLifeState extends State<VantanLife> {
  static List<Widget> pageList = [
    HomePage(),
    Container(),
    TimetablePage(),
    Container(),
    const ProfilePage(),
  ];
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: colorScheme.onSurfaceVariant,
        unselectedItemColor: colorScheme.onSurfaceVariant,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_outlined,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_outlined,
                size: 30,
              ),
              label: ''),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
