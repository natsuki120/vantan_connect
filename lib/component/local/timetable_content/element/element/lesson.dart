import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/student_attendance/student_attendance.dart';
import '/component/local/attendance_modal/attendance_modal.dart';
import '/domain/class/class.dart';
import '/domain/student/student.dart';
import '/domain/value/class_name.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/space_box/space_box.dart';
import '../../../../shared/single/text_style/text_style.dart';

class Lesson extends ConsumerWidget {
  const Lesson({Key? key, required this.classInfo, required this.color})
      : super(key: key);

  final Class classInfo;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Student> studentAttendance = ref.watch(
      queryServiceProvider(
        StudentAttendance(
            student: ref.watch(myAccountProvider.notifier).state,
            classInfo: classInfo),
      ),
    );
    return GestureDetector(
      // 仮置き
      onTap: () {
        if (classInfo.name != '昼休憩' &&
            classInfo.name != 'S高サポート' &&
            classInfo.name != 'HR')
          attendanceModal(
              context,
              classInfo,
              ref,
              ref.watch(myAccountProvider.notifier).state,
              ClassName(name: classInfo.name),
              studentAttendance);
      },
      child: Container(
        width: 65.sp,
        height: 96.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.sp),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  SpaceBox(height: 10.sp),
                  Text(
                    classInfo.name,
                    style: caption1Regular(highEmphasis),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Normal extends StatelessWidget {
  const Normal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.sp,
      height: 96.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: surfaceSecondary.withOpacity(0.05),
      ),
    );
  }
}
