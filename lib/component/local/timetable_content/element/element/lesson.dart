import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/local/attendance_modal/attendance_modal.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/component/shered/single/space_box.dart';
import 'package:vantan_connect/domain/value/class_name.dart';
import '../../../../../domain/student/student.dart';
import '../../../../shered/single/color.dart';
import '../../../../shered/single/test_style.dart';

class Lesson extends ConsumerWidget {
  const Lesson({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      // 仮置き
      onTap: () => attendanceModal(
        context,
        classInfo,
        ref,
        Student(id: '高橋夏輝'),
        ClassName(name: 'プログラミング'),
      ),
      child: Container(
        width: 65.sp,
        height: 96.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.sp),
          color: primary5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SpaceBox(height: 10.sp),
            Flexible(
              child: Text(
                classInfo.name,
                style: caption1Regular(highEmphasis),
                maxLines: 1,
              ),
            ),
            SpaceBox(height: 44.sp),
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
            )
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
      height: 96.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.sp),
        color: surfaceSecondary.withOpacity(0.05),
      ),
    );
  }
}
