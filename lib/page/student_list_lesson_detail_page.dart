import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/local/attendance_record/attendance_record.dart';
import 'package:vantan_connect/domain/student/student.dart';
import '../component/shared/single/color.dart';
import '../component/shared/single/text_style.dart';

class StudentListInLessonDetailPage extends ConsumerWidget {
  const StudentListInLessonDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            unselectedLabelStyle: bodyRegular(midEmphasis),
            labelStyle: bodyBold(primary),
            labelColor: primary,
            indicatorColor: primary,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: '授業詳細'),
              Tab(text: '出席記録'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            AttendanceRecord(
              studentList: [
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
                Student(name: '高橋夏輝'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
