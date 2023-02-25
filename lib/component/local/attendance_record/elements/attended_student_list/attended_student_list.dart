import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/domain/class/class.dart';
import '/domain/class_document/class_document.dart';
import '/domain/riverpod_argument/class_and_document/class_and_document.dart';
import '../../../../shared/single/riverpod/riverpod.dart';
import '../../shared/attendance_student_tile/attendance_student_tile.dart';

class AttendedStudentList extends ConsumerWidget {
  const AttendedStudentList(
      {Key? key, required this.classInfo, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;
  final Class classInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(fetchStudentAttendanceByClass(ClassAndDocument(
            classInfo: classInfo, classDocument: classDocument)))
        .when(
          data: (dataList) => ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final student = dataList[index];
                return AttendedStudentTile(student: student);
              }),
          error: (error, _) => Icon(Icons.error),
          loading: () => CircularProgressIndicator(),
        );
  }
}
