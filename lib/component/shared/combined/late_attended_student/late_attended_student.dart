import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/late_attendance_status/late_attendance_status.dart';

import '../../../shared/combined/not_attended_student/elements/lesson_result_part/elements/reason_text/reason_text.dart';
import '../../../../domain/student/student.dart';
import '../../single/border_line/border_line.dart';
import '../../single/color/color.dart';
import '../../single/space_box/space_box.dart';
import '../../single/text_style/text_style.dart';

class LateAttendedStudent extends ConsumerWidget {
  const LateAttendedStudent({Key? key, required this.student})
      : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.0.sp,
            right: 8.0.sp,
            left: 8.0.sp,
            bottom: 12.sp,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LateAttendedStatus(),
              SpaceBox(width: 20.sp),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(student.name, style: bodyBold(highEmphasis)),
                        Spacer(),
                        Text('7:30'),
                      ],
                    ),
                    SpaceBox(height: 12.sp),
                    ReasonText(reasonText: student.reason),
                    //  Placeholder(fallbackWidth: 276.sp, fallbackHeight: 61.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
        BorderLine(),
      ],
    );
  }
}
