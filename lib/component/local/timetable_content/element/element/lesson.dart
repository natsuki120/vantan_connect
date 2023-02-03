import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../domain/class/class.dart';
import '../../../../../domain/student/student.dart';
import '../../../../../domain/value/class_name.dart';
import '../../../../shered/single/color.dart';
import '../../../../shered/single/space_box.dart';
import '../../../../shered/single/test_style.dart';
import '../../../attendance_modal/attendance_modal.dart';

class Lesson extends HookConsumerWidget {
  const Lesson({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasAttended = false;
    // useEffectOnce(() {
    //   ref
    //       .watch(queryService)
    //       .hasBeenAttended(student: Student(id: '高橋夏輝'), classInfo: classInfo)
    //       .then((value) => hasAttended = value);
    // });
    return GestureDetector(
      // 仮置き
      onTap: () {
        if (classInfo.name != 'HR' &&
            classInfo.name != '特別授業' &&
            classInfo.name != 'S高レポート') {
          attendanceModal(
            context,
            classInfo,
            ref,
            Student(id: '高橋夏輝'),
            ClassName(name: classInfo.name),
            hasAttended,
          );
        }
      },
      child: Container(
        width: 65.sp,
        height: 92.sp,
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

class Nomal extends StatelessWidget {
  const Nomal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.sp,
      height: 92.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: surfaceSecondary.withOpacity(0.05),
      ),
    );
  }
}
