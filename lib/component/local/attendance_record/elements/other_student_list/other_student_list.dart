import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/shared/combined/other_student/other_student.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/riverpod/riverpod.dart';

class OtherStudentList extends ConsumerWidget {
  const OtherStudentList(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final Class classInfo;
  final ClassDocument classDocument;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ref
            .watch(fetchStudentOtherByClass(ClassAndDocument(
                classInfo: classInfo, classDocument: classDocument)))
            .when(
              data: (studentList) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    return OtherStudent(student: student);
                  }),
              error: (error, _) => Icon(Icons.error),
              loading: () => CircularProgressIndicator(),
            ),
      ],
    );
  }
}
