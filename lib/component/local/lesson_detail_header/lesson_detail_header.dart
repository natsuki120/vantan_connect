import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/component/shered/navigator.dart';
import '../../../domain/class/class.dart';
import '../../shered/single/buttons.dart';
import '../../shered/single/color.dart';
import '../../shered/single/custom_icon_button.dart';
import '../../shered/single/registerd_lesson_by_student_mark.dart';
import '../../shered/single/space_box.dart';
import '../../shered/single/test_style.dart';

class LessonDetailHeader extends StatelessWidget {
  const LessonDetailHeader({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 390.sp,
              height: 240.sp,
              color: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 64.sp),
              child: Row(
                children: [
                  CustomIconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    width: 40.sp,
                    height: 40.sp,
                    backgroundColor: primary10,
                    callback: () => NavigatorPop(context),
                    borderColor: primary10,
                  ),
                  Spacer(),
                  CustomIconButton(
                    icon: Icon(Icons.calendar_today),
                    width: 40.sp,
                    height: 40.sp,
                    backgroundColor: primary10,
                    callback: () {},
                    borderColor: primary10,
                  ),
                  SpaceBox(width: 12.sp),
                  CustomIconButton(
                    icon: Icon(Icons.more_vert),
                    width: 40.sp,
                    height: 40.sp,
                    backgroundColor: primary10,
                    callback: () {},
                    borderColor: primary10,
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 39.sp,
                    height: 27.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: surfaceSecondary.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Text(
                      '1限',
                      style: subHeadLineBold(
                        midEmphasis.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SpaceBox(width: 8.sp),
                  Spacer(),
                  OriginalUnEnabledOutLinedButton(
                    text: '詳細',
                    textStyle: bodyBold(primary),
                    borderColor: midEmphasis,
                    callback: () {},
                  ),
                ],
              ),
              SpaceBox(height: 10.sp),
              Row(
                children: [
                  Text(classInfo.name, style: title1Bold(highEmphasis)),
                  SpaceBox(width: 8.sp),
                  RegisteredLessonByStudentMark(),
                ],
              ),
              SpaceBox(height: 20.sp),
              Container(
                width: 358.sp,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: lowEmphasis.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
              ),
              SpaceBox(height: 21.sp),
            ],
          ),
        )
      ],
    );
  }
}
