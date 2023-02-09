import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/local/attendance_record/elements/not_attended_student/not_attended_student.dart';
import 'package:vantan_connect/component/local/attendance_record/elements/other_student/other_student.dart';
import '../../../domain/student/student.dart';
import '../../shared/single/color.dart';
import '../../shared/single/text_style.dart';
import 'elements/attended_student/attended_student.dart';

class AttendanceRecord extends HookConsumerWidget {
  const AttendanceRecord({Key? key, required this.studentList})
      : super(key: key);

  final List<Student> studentList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Placeholder(fallbackHeight: 199),
        Expanded(
          child: DefaultTabController(
            length: 4,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    bottom: TabBar(
                      isScrollable: true,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primary,
                      ),
                      labelColor: white,
                      unselectedLabelColor: midEmphasis,
                      labelStyle: bodyBold(white),
                      unselectedLabelStyle:
                          bodyRegular(midEmphasis.withOpacity(0.6)),
                      tabs: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.sp),
                          child: Tab(text: 'すべて', height: 32.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.sp),
                          child: Tab(text: '出席', height: 32.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.sp),
                          child: Tab(text: '欠席', height: 32.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.sp),
                          child: Tab(text: 'その他', height: 32.sp),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.sp, vertical: 28.sp),
                child: TabBarView(
                  children: [
                    AttendedStudent(studentList: studentList),
                    AttendedStudent(studentList: studentList),
                    NotAttendedStudent(studentList: studentList),
                    OtherStudent(studentList: studentList),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
