import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../component/local/lesson_student_list/lesson_student_list.dart';
import '../component/local/lesson_result_list/lesson_result_list.dart';
import '../component/shared/combined/lesson_detail_header.dart';
import '../component/shared/single/color/color.dart';
import '../component/shared/single/text_style/text_style.dart';
import '/domain/class/class.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

class LessonDetailPageInResultPage extends HookConsumerWidget {
  const LessonDetailPageInResultPage({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is stack_trace.Trace) return stack.vmTrace;
      if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
      return stack;
    };

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: white,
                pinned: true,
                expandedHeight: 360.sp,
                flexibleSpace: FlexibleSpaceBar(
                  background: LessonDetailHeader(classInfo: classInfo),
                ),
                bottom: TabBar(
                  unselectedLabelStyle: bodyRegular(midEmphasis),
                  labelStyle: bodyBold(primary),
                  labelColor: primary,
                  indicatorColor: primary,
                  tabs: [
                    Tab(text: '授業記録'),
                    Tab(text: '履修者'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              LessonResultList(classInfo: classInfo),
              LessonStudentList(classInfo: classInfo)
            ],
          ),
        ),
      ),
    );
  }
}
