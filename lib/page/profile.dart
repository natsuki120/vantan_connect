import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shared/single/border_line/border_line.dart';
import 'package:vantan_connect/component/shared/single/color/color.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'package:vantan_connect/component/shared/single/text_style/text_style.dart';
import '../domain/student/student.dart';

class Profile extends ConsumerWidget {
  const Profile({Key? key, required this.studentName}) : super(key: key);

  final String studentName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final student = ref.watch(fetchStudentInfo(Student(name: '高橋夏輝')));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 53.sp),
      child: student.when(
          data: (data) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('名前', style: caption1Bold(midEmphasis)),
                      SpaceBox(height: 15.sp),
                      Text(data.name, style: bodyRegular(highEmphasis)),
                      SpaceBox(height: 15.sp),
                      BorderLine(),
                    ],
                  ),
                  SpaceBox(height: 25.sp),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('コース', style: caption1Bold(midEmphasis)),
                      SpaceBox(height: 15.sp),
                      Text(data.course, style: bodyRegular(highEmphasis)),
                      SpaceBox(height: 15.sp),
                      BorderLine(),
                    ],
                  ),
                ],
              ),
          error: (err, _) => Container(),
          loading: () => CircularProgressIndicator()),
    );
  }
}
