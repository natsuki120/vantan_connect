import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/student_attendance/student_attendance.dart';
import '/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/infrastructure/student_repository.dart';
import '/infrastructure/query_service_repository.dart';
import '/use_case/actor/student.dart';
import '../../use_case/query_service/query_service.dart';

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
