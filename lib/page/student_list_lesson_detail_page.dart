import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/attendance_record/attendance_record.dart';
import '../component/shared/single/color/color.dart';
import '../component/shared/single/text_style/text_style.dart';
import '../domain/class/class.dart';

class StudentListInLessonDetailPage extends ConsumerWidget {
  const StudentListInLessonDetailPage({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 114,
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                alignment: Alignment.centerLeft,
                child: Text('UI/UXとは', style: header(highEmphasis)),
              ),
              SizedBox(
                height: 100,
                child: AppBar(
                  automaticallyImplyLeading: false,
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
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 850,
                  child: TabBarView(
                    children: [
                      Container(),
                      AttendanceRecord(classInfo: classInfo),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
