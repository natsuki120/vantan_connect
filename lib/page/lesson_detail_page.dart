import 'package:flutter/material.dart';
import 'package:vantan_connect/component/local/lesson_detail_body/lesson_detail_body.dart';
import 'package:vantan_connect/component/local/lesson_detail_header/lesson_detail_header.dart';
import '../domain/class/class.dart';

class LessonDetailPage extends StatelessWidget {
  const LessonDetailPage({Key? key, required this.classInfo}) : super(key: key);

  final Class classInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LessonDetailHeader(classInfo: classInfo),
          LessonDetailBody(classDocumentList: classInfo.classDocumentList),
        ],
      ),
    );
  }
}
