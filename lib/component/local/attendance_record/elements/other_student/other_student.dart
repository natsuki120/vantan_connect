import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../domain/student/student.dart';
import '../../../../shared/single/border_line.dart';
import '../../../../shared/single/color.dart';
import '../../../../shared/single/space_box.dart';
import '../../../../shared/single/text_style.dart';
import 'elements/status/status.dart';

class OtherStudent extends StatelessWidget {
  const OtherStudent({Key? key, required this.studentList}) : super(key: key);

  final List<Student> studentList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: studentList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Status(),
                SpaceBox(width: 20.sp),
                Text('高橋夏輝', style: bodyBold(highEmphasis)),
                Spacer(),
                Text('7:30'),
              ],
            ),
            SpaceBox(height: 15.sp),
            BorderLine(),
            SpaceBox(height: 15.sp),
          ],
        );
      },
    );
  }
}
