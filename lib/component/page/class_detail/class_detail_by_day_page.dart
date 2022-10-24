import 'package:flutter/material.dart';
import 'package:vantan_connect/component/organism/class_detail_info.dart';
import 'package:vantan_connect/component/organism/custom_app_bar.dart';
import 'package:vantan_connect/component/organism/custom_grid_view.dart';
import 'package:vantan_connect/component/organism/custom_tab_bar.dart';
import 'package:vantan_connect/model/attendance_status_state/attendance_status_state.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'attendance_confirmation_page.dart';

class ClassDetailByDayPage extends StatelessWidget {
  const ClassDetailByDayPage({
    super.key,
    required this.classByDayState,
    required this.attendanceStatusState,
  });

  final List<AttendanceStatusState> attendanceStatusState;
  final ClassByDayState classByDayState;

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
                  ClassDetailInfo(className: classByDayState.className),
                  const CustomTabBar(firstText: '出席簿', secondText: '授業資料'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            AttendanceConfirmationPage(
              classByDayState: classByDayState,
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
