import 'package:flutter/material.dart';
import 'package:vantan_connect/view/template/attendance_confirmation_modal.dart';
import 'package:vantan_connect/view/page/select_class_page.dart';
import '../organism/canvas_color_app_bar_with_title_message.dart';
import '../organism/guide_to_select_new_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // TODO 指定の日時になったら新規作成ボタンを配置する

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CanvasColorAppBarWithTitleMessage(title: 'スケジュール'),
      body: Center(
        child: GuideToSelectNewClass(
          pageRoute: SelectClassPage(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => attendanceConfirmationModal(context),
      ),
    );
  }
}
