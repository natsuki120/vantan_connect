import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/class/class.dart';
import '../../shared/single/color/color.dart';
import '../../shared/single/riverpod/riverpod.dart';
import 'elements/lesson_student_part/lesson_student_part.dart';

class LessonStudentList extends HookConsumerWidget {
  LessonStudentList({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllClassDocumentByClass(classInfo)).when(
          //dataにはclassDocumentしか入らなかったので型を無視して使用中。必要に応じて変更予定。
          data: (classDocument) {
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
                        itemCount: classInfo.studentIdList.length,
                        itemBuilder: (context, index) {
                          final studentId =
                              classInfo.studentIdList[index].toString();
                          return LessonStudentPart(studentId: studentId);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (err, _) => Text('通信エラーです。開発者にお問い合せください'),
          loading: () => CircularProgressIndicator(),
        );
  }
}
