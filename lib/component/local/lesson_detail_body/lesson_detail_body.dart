import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/class_document/class_document.dart';
import '../../../page/attendance_book_page.dart';
import '../../shered/navigator.dart';
import '../../shered/single/color.dart';
import '../../shered/single/space_box.dart';
import '../../shered/single/test_style.dart';

class LessonDetailBody extends StatelessWidget {
  const LessonDetailBody({Key? key, required this.classDocumentList})
      : super(key: key);

  final List<ClassDocument> classDocumentList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          children: [
            Row(
              children: [
                Text('授業記録', style: headLineBold(highEmphasis)),
                Spacer(),
                Text('全て見る', style: bodyRegular(highEmphasis))
              ],
            ),
            SpaceBox(height: 16.sp),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: classDocumentList.length,
                itemBuilder: (context, index) {
                  final ClassDocument classDocument = classDocumentList[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () => NavigatorPush(
                          context,
                          page:
                              AttendanceBookPage(classDocument: classDocument),
                        ),
                        child: Container(
                          width: 358.sp,
                          height: 58.sp,
                          decoration: BoxDecoration(
                            color: surfaceSecondary.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(12.sp),
                          ),
                          child: Row(
                            children: [
                              SpaceBox(width: 16.sp),
                              Column(
                                children: [
                                  SpaceBox(height: 8.sp),
                                  Text(
                                    '第${classDocument.count}回',
                                    style: caption1Regular(
                                      midEmphasis.withOpacity(0.7),
                                    ),
                                  ),
                                  Text(
                                    classDocument.day,
                                    style: headLineBold(highEmphasis),
                                  ),
                                ],
                              ),
                              SpaceBox(width: 16.sp),
                              Container(
                                width: 1.sp,
                                height: 42.sp,
                                decoration: BoxDecoration(
                                  color: lowEmphasis.withOpacity(0.2),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SpaceBox(height: 8.sp),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
