import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/attendance_record/attendance_record.dart';
import '../component/shared/single/color.dart';
import '../component/shared/single/text_style.dart';

class StudentListInLessonDetailPage extends ConsumerWidget {
  const StudentListInLessonDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: white,
                pinned: true,
                expandedHeight: 184.sp,
                flexibleSpace: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 100),
                  child: Text(
                    'UI/UXとは？',
                    style: header(highEmphasis),
                  ),
                ),
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
            ];
          },
          body: TabBarView(
            children: [
              Container(),
              AttendanceRecord(),
            ],
          ),
        ),
      ),
    );
  }
}
