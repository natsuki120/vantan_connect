import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/domain/class_document/class_document.dart';
import '/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../../domain/class/class.dart';
import '../../../../shared/single/riverpod/riverpod.dart';
import '../../shared/attendance_student_tile/attendance_student_tile.dart';

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
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    final student = studentList[index];
                    return AttendedStudentTile(student: student);
                  }),
              error: (error, _) => Icon(Icons.error),
              loading: () => CircularProgressIndicator(),
            ),
      ],
    );
  }
}
