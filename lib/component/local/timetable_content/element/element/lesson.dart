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
  const Lesson({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue studentAttendance = ref.watch(
      queryServiceProvider(
        StudentAttendance(student: Student(id: '高橋夏輝'), classInfo: classInfo),
      ),
    );
    return GestureDetector(
      // 仮置き
      onTap: () {
        attendanceModal(context, classInfo, ref, Student(id: '高橋夏輝'),
            ClassName(name: classInfo.name), studentAttendance);
      },
      child: Container(
        width: 65.sp,
        height: 96.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.sp),
          color: primary10,
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
                  Spacer(),
                  Container(
                    width: 49.sp,
                    height: 21.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.sp),
                      color: surfaceSecondary.withOpacity(0.05),
                    ),
                    child: Text(
                      classInfo.classRoom,
                      style: caption2Regular(midEmphasis.withOpacity(0.7)),
                    ),
                  ),
                ],
              ),
            ),
            SpaceBox(height: 8.sp),
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
