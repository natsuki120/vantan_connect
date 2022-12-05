import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
import 'package:vantan_connect/domain/class/value/attendance_book_id.dart';
import 'package:vantan_connect/domain/class/value/class_student.dart';
import 'package:vantan_connect/domain/class/value/class_teacher.dart';
part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class with _$Class {
  const factory Class({
    @Default('') String id,
    @Default('') String name,
    @Default('') String classImgUrl,
    @Default('') String overView,
    @ClassTeacherConverter() @Default([]) List<ClassTeacher> teacher,
    @ClassStudentConverter() @Default([]) List<ClassStudent> student,
    @Default('') String targetSchool,
    @Default('') String targetStudent,
    @Default('') String goalPoint,
    @Default([]) List<String> goalRequirements,
    @Default('') String endTime,
    @Default(0) int frameCount,
    @Default('') String startTime,
    @Default('') String announceTime,
    @Default(0) int timeTable,
    @AttendanceBookIdConverter()
    @Default([])
        List<AttendanceBookId> attendanceBook,
    @Default(<String>[]) List<String> studentVoice,
    @Default(false) bool isOnline,
    @Default('') String baseClass,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}

abstract class IClassRepository {
  Stream<List<Class>> fetchClassInfo();
  Stream<List<Class>> fetchBaseClass();
  Stream<List<Class>> fetchSelectableClass(Class baseClass);
  void registerMyClass(Class classInfo);
  void deleteAllClass(List<Class> classList);
  void deleteClass(Class classInfo);
  Future fetchTeacherInfo(ClassTeacher classTeacher);
  Future<List<AttendanceBook>> fetchAttendanceBook(Class classInfo);
}
