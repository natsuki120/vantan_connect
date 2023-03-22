import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/attend_status/attend_status.dart';
import '../../../../domain/student/student.dart';
import '../../single/border_line/border_line.dart';
import '../../single/color/color.dart';
import '../../single/space_box/space_box.dart';
import '../../single/text_style/text_style.dart';

class AttendedStudent extends ConsumerWidget {
  const AttendedStudent({Key? key, required this.student}) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.sp,
            right: 8.sp,
            left: 8.sp,
            bottom: 12.sp,
          ),
          child: Row(
            children: [
              AttendStatus(),
              SpaceBox(width: 20.sp),
              Text('${student.name}', style: bodyBold(highEmphasis)),
              Spacer(),
              Text('7:30'),
            ],
          ),
        ),
        BorderLine(),
      ],
    );
  }
}
