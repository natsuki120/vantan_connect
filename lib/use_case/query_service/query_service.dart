import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '/domain/student/student.dart';
import '/query_service/query_service.dart';

class QueryServiceUseCase {
  QueryServiceUseCase({required this.queryService});
  final IQueryService queryService;

  Stream<Student> fetchStudentAttendance(
      {required Student student, required Class classInfo}) {
    return queryService.fetchStudentAttendance(
      student: student,
      classInfo: classInfo,
    );
  }

  Future<List<ClassDocument>> fetchAllClassDocumentByClass(
      {required Class classInfo}) {
    return queryService.fetchAllClassDocumentByClass(classInfo: classInfo);
  }

  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentAttendanceByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Student>> fetchStudentNotAttendByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentNotAttendanceByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Student>> fetchStudentLateByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentLateByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Student>> fetchStudentOtherByClass(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchStudentOtherByClass(
        classInfo: classInfo, classDocument: classDocument);
  }

  Stream<List<Class>> fetchClassListInAPClass() {
    return queryService.fetchLessonListInAPClass();
  }

  Stream<List<Class>> fetchClassListInAClass() {
    return queryService.fetchLessonListInAClass();
  }

  Stream<List<Class>> fetchClassListInBClass() {
    return queryService.fetchLessonListInBClass();
  }

  Stream<List<Class>> fetchClassListInCClass() {
    return queryService.fetchLessonListInCClass();
  }

  Future<Student> fetchStudentInfo({required String name}) {
    return queryService.fetchStudentInfo(name: name);
  }

  Stream<List<Student>> fetchAllStudentAttendanceStatusByClass(
      {required Class classInfo}) {
    return queryService.fetchAllStudentByClass(classInfo: classInfo);
  }

  Stream<List<ClassDocument>> fetchClassDayWhichWasHeld(
      {required String course, required String className}) {
    return queryService.fetchClassDayWhichWasHeld(
      className: className,
      course: course,
    );
  }

  Stream<List<Student>> fetchAllClassDocumentByDay(
      {required Class classInfo, required ClassDocument classDocument}) {
    return queryService.fetchAllClassDocumentByDay(
        classInfo: classInfo, classDocument: classDocument);
  }
}
