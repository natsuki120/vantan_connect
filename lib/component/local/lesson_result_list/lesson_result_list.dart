import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/domain/class/class.dart';
import '../../shared/single/color/color.dart';
import 'elements/lesson_result_part/lesson_result_part.dart';

class LessonResultList extends HookConsumerWidget {
  const LessonResultList({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchAllClassDocumentByClass(classInfo)).when(
          data: (documentList) {
            return ColoredBox(
              color: white,
              child: ListView.builder(
                itemCount: documentList.length,
                itemBuilder: (context, index) {
                  final document = documentList[index];
                  return LessonResultPart(
                    classInfo: classInfo,
                    classDocument: document,
                  );
                },
              ),
            );
          },
          error: (err, _) => Text('通信エラーです。開発者にお問合せください'),
          loading: () => CircularProgressIndicator(),
        );
  }
}
