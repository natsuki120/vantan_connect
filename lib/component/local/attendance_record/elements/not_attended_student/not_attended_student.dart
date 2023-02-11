import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/riverpod/riverpod.dart';
import '../../../../shared/single/border_line/border_line.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/space_box/space_box.dart';
import '../../../../shared/single/text_style/text_style.dart';
import 'elements/status/status.dart';

class NotAttendedStudent extends ConsumerWidget {
  const NotAttendedStudent({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ref.watch(fetchStudentNotAttendanceByClass(classInfo)).when(
              data: (studentList) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Status(),
                        SpaceBox(width: 20.sp),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(student.name,
                                      style: bodyBold(highEmphasis)),
                                  Spacer(),
                                  Text('7:30'),
                                ],
                              ),
                              SpaceBox(height: 12.sp),
                              Placeholder(
                                  fallbackWidth: 276.sp, fallbackHeight: 61.sp),
                            ],
                          ),
                        )
                      ],
                    );
                  }),
              error: (error, _) => Icon(Icons.error),
              loading: () => CircularProgressIndicator(),
            ),
        SpaceBox(height: 15.sp),
        BorderLine(),
        SpaceBox(height: 15.sp),
      ],
    );
  }
}
