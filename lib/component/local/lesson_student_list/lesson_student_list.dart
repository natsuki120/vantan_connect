import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/class/class.dart';
import '../../shared/single/color/color.dart';
import 'elements/lesson_student_part/lesson_student_part.dart';

class LessonStudentList extends HookConsumerWidget {
  const LessonStudentList({Key? key, required this.classInfo})
      : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllClassDocumentByClass(classInfo)).when(
          data: (studentIdList) {
            return ColoredBox(
              color: white,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.sp, vertical: 12.sp),
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                        child: Text('高等部'),
                        decoration: BoxDecoration(
                          border: Border.all(color: borderHighEmphasis),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                    ]),
                    Expanded(
                      child: ListView.builder(
                        itemCount: studentIdList.length,
                        itemBuilder: (context, index) {
                          final studentName =
                              classInfo.studentIdList[index].toString();
                          return LessonStudentPart(
                            studentName: studentName,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (err, _) => Text('通信エラーです。開発者にお問合せください'),
          loading: () => CircularProgressIndicator(),
        );
  }
}
