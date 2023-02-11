import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../domain/class/class.dart';
import '/domain/student/student.dart';

abstract class IQueryService {
  Future<List<Student>> fetchAllStudentByClass({required Class classInfo});

  Future<List<ClassDocument>> fetchAllClassDocumentByClass(
      {required Class classInfo});

  Stream<List<Class>> fetchLessonListInAPClass();
  Stream<List<Class>> fetchLessonListInAClass();
  Stream<List<Class>> fetchLessonListInBClass();
  Stream<List<Class>> fetchLessonListInCClass();

  // 生徒が出席しているか否か判断する関数。
  // 生徒の時間割画面で使う。
  Stream<Student> fetchStudentAttendance({
    required Student student,
    required Class classInfo,
  });

  // 特定の授業に格納している生徒の出席状況をステータス別に取得。
  // スタッフの成績表ページで使う。
  Stream<List<Student>> fetchStudentAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument});
  Stream<List<Student>> fetchStudentNotAttendanceByClass(
      {required Class classInfo, required ClassDocument classDocument});
  Stream<List<Student>> fetchStudentLateByClass(
      {required Class classInfo, required ClassDocument classDocument});
  Stream<List<Student>> fetchStudentOtherByClass(
      {required Class classInfo, required ClassDocument classDocument});
}
