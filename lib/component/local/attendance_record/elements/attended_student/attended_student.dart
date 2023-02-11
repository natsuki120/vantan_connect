import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/riverpod.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/border_line.dart';
import '../../../../shared/single/color.dart';
import '../../../../shared/single/space_box.dart';
import '../../../../shared/single/text_style.dart';
import 'elements/status/status.dart';

class AttendedStudent extends ConsumerWidget {
  const AttendedStudent({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ref.watch(fetchStudentAttendanceByClass(classInfo)).when(
              data: (studentList) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    return Row(
                      children: [
                        Status(),
                        SpaceBox(width: 20.sp),
                        Text('${student.name}', style: bodyBold(highEmphasis)),
                        Spacer(),
                        Text('7:30'),
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
