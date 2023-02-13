import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/domain/class/class.dart';
import '/page/lesson_detail_page.dart';
import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/department_tag/department_tag.dart';
import '../../../../shared/single/navigator/navigator.dart';
import '../../../../shared/single/space_box/space_box.dart';
import '../../../../shared/single/text_style/text_style.dart';

class ClassCard extends StatelessWidget {
  ClassCard({super.key, required this.classInfo});

  final Class classInfo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => NavigatorPush(
        context,
        page: LessonDetailPage(classInfo: classInfo),
      ),
      child: Container(
        width: 358.sp,
        decoration: BoxDecoration(
          border: Border.all(color: midEmphasis.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(12.sp),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 100.sp,
              height: 210.sp,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0.sp),
                child: Image.asset(
                  'images/${classInfo.classImgUrl}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          '前期',
                          style: subHeadLineBold(
                            midEmphasis.withOpacity(0.7),
                          ),
                        ),
                      ),
                      SpaceBox(width: 91.sp),
                    ],
                  ),
                  SpaceBox(height: 8.sp),
                  Text(classInfo.name, style: headLineBold(highEmphasis)),
                  SpaceBox(height: 5.sp),

                  SpaceBox(height: 8.sp),
                  // shared component候補
                  // Container(
                  //   height: 40.sp,
                  //   decoration: BoxDecoration(
                  //     color: surfaceSecondary.withOpacity(0.05),
                  //     borderRadius: BorderRadius.circular(8.sp),
                  //   ),
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(
                  //       horizontal: 16.0.sp,
                  //     ),
                  //     child: Row(
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           '担当',
                  //           style: caption1Regular(
                  //             lowEmphasis.withOpacity(0.5),
                  //           ),
                  //         ),
                  //         SpaceBox(width: 12.sp),
                  //         SpaceBox(width: 8.sp),
                  //         Text(
                  //           '高橋　夏輝',
                  //           style: bodyRegular(
                  //             midEmphasis.withOpacity(0.7),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  SpaceBox(height: 24.sp),
                  DepartmentTag(department: 'テックフォードアカデミー'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
