import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/page/attendance_confirmation_model_page.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/examine_application.dart';
import 'package:vantan_connect/view_model/applying_class_state_view_model.dart';
import 'package:vantan_connect/view_model/class_state/class_state_to_profile_view_model.dart';
import 'package:vantan_connect/view_model/student_state/absence_student_view_model.dart';
import 'package:vantan_connect/view_model/student_state/attendance_student_view_model.dart';
import 'package:vantan_connect/view_model/student_state/late_student_view_model.dart';
import 'package:vantan_connect/view_model/user_state/user_view_model.dart';
import 'component/atom/color_schemes.g.dart';
import 'component/molecule/style_by_platform.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    ref.read(classStateViewModel.notifier).fetchClassInfoToRegister();
    ref.read(applyingClassStateViewModel.notifier).fetchApplyingClassInfo();

    Future(() async {
      await ref.read(attendanceStudentViewModel.notifier).fetchAttendanceUser();
      await ref.read(absenceStudentViewModel.notifier).fetchAbsenceUser();
      await ref.read(lateStudentViewModel.notifier).fetchLateUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(classStateViewModel);
    ref.watch(userViewModel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme!.primaryContainer,
        title: Text(
          'ホーム',
          style: titleMedium(
            FontWeight.w600,
            const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: Column(
        children: [
          // ElevatedButton(
          //   onPressed: () => attendanceConfirmationModalTemplate(context),
          //   child: Text('出席ボタン'),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: ref
                  .watch(classStateViewModel.notifier)
                  .state
                  .map((classInfo) => classInfo)
                  .length,
              itemBuilder: (context, index) {
                final classInfo =
                    ref.watch(classStateViewModel.notifier).state[index];
                if ('${classInfo.startTime}' == '9:30') {
                  print(classInfo);
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    attendanceConfirmationModalPage(
                      context,
                      '${classInfo.timeTable}限 -${classInfo.className}',
                    );
                  });
                }
                return Container();
              },
            ),
          ),
          // ElevatedButton(
          //   onPressed: () => Navigator.of(context).push(
          //     MaterialPageRoute<ClassApplication>(
          //       builder: (_) => ClassApplication(),
          //     ),
          //   ),
          //   child: Text('授業登録ボタン'),
          // ),
          Expanded(
            child: Column(
              children: [
                Text('出席している生徒'),
                SpaceBox(
                  height: 20,
                ),
                Consumer(
                  builder: (context, ref, child) {
                    ref.watch(attendanceStudentViewModel);
                    final atdStudents = ref
                        .watch(attendanceStudentViewModel.notifier)
                        .state
                        .students;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: atdStudents.length,
                        itemBuilder: (context, index) {
                          final atdStudent = atdStudents[index];
                          return Center(child: Text(atdStudent['name']));
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text('欠席している生徒'),
                SpaceBox(
                  height: 20,
                ),
                Consumer(
                  builder: (context, ref, child) {
                    ref.watch(absenceStudentViewModel);
                    final absStudents = ref
                        .watch(absenceStudentViewModel.notifier)
                        .state
                        .students;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: absStudents.length,
                        itemBuilder: (context, index) {
                          final absStudent = absStudents[index];
                          return Center(child: Text(absStudent['name']));
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text('遅刻している生徒'),
                SpaceBox(
                  height: 20,
                ),
                Consumer(
                  builder: (context, ref, child) {
                    ref.watch(lateStudentViewModel);
                    final lateStudents =
                        ref.watch(lateStudentViewModel.notifier).state.students;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: lateStudents.length,
                        itemBuilder: (context, index) {
                          final lateStudent = lateStudents[index];
                          return Center(child: Text(lateStudent['name']));
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Consumer(builder: (context, ref, child) {
            ref.watch(applyingClassStateViewModel);
            return Expanded(
              child: ListView.builder(
                itemCount: ref
                    .watch(applyingClassStateViewModel.notifier)
                    .state
                    .length,
                itemBuilder: (context, index) {
                  final applyingClassInfo = ref
                      .watch(applyingClassStateViewModel.notifier)
                      .state[index];
                  return GestureDetector(
                    child: Column(
                      children: [
                        // Text(applyingClassInfo.name),
                        // Text(applyingClassInfo.className
                        //     .map((className) => className)
                        //     .toString()),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<ExamineApplication>(
                          builder: (_) => ExamineApplication(
                            applyingClassState: applyingClassInfo,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          })
        ],
      ),
    );
  }
}
