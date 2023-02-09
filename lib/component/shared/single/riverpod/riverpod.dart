import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/riverpod_argument/class_and_document/class_and_document.dart';
import 'package:vantan_connect/domain/student_attendance/student_attendance.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/infrastructure/student_repository.dart';
import '/infrastructure/query_service_repository.dart';
import '/use_case/actor/student.dart';
import '../../../../use_case/query_service/query_service.dart';

final studentUseCase = Provider((ref) => StudentUseCase(StudentRepository()));

final classInfoProvider =
    FutureProvider.family.autoDispose<List<Student>, ClassDocument>(
  (ref, ClassDocument classDocument) async {
    return await QueryServiceUseCase(
      queryService: QueryServiceRepositoryWhichUseFirebase(),
    ).fetchClassInfo(classDocument);
  },
);

final queryServiceProvider = StreamProvider.family<dynamic, StudentAttendance>(
  (ref, studentAttendance) => QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ).fetchStudentAttendance(
    student: studentAttendance.student,
    classInfo: studentAttendance.classInfo,
  ),
);

final fetchStudentAttendanceByClass =
    StreamProvider.family((ref, ClassAndDocument classAndDocument) {
  return QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ).fetchStudentAttendanceByClass(
      classInfo: classAndDocument.classInfo,
      classDocument: classAndDocument.classDocument);
});

final fetchStudentNotAttendanceByClass =
    StreamProvider.family((ref, ClassAndDocument classAndDocument) {
  return QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ).fetchStudentNotAttendByClass(
      classInfo: classAndDocument.classInfo,
      classDocument: classAndDocument.classDocument);
});

final fetchStudentLateByClass =
    StreamProvider.family((ref, ClassAndDocument classAndDocument) {
  return QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ).fetchStudentLateByClass(
      classInfo: classAndDocument.classInfo,
      classDocument: classAndDocument.classDocument);
});

final fetchStudentOtherByClass =
    StreamProvider.family((ref, ClassAndDocument classAndDocument) {
  return QueryServiceUseCase(
    queryService: QueryServiceRepositoryWhichUseFirebase(),
  ).fetchStudentOtherByClass(
      classInfo: classAndDocument.classInfo,
      classDocument: classAndDocument.classDocument);
});

final studentList = [
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: true),
  Student(attendance: false),
  Student(attendance: false),
  Student(attendance: false),
  Student(attendance: false),
];
