import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/attendance_book/value/attendance_book_id.dart';
import 'package:vantan_connect/domain/attendance_book/value/student_in_attendance_book.dart';
import 'package:vantan_connect/domain/date_time_converter.dart';
import 'package:vantan_connect/domain/studnet/student.dart';
part 'attendance_book.freezed.dart';
part 'attendance_book.g.dart';

@freezed
class AttendanceBook with _$AttendanceBook {
  const factory AttendanceBook({
    @Default('') String id,
    @Default('') String title,
    @StudentInAttendanceBookConverter()
    @Default([])
        List<StudentInAttendanceBook> studentInAttendanceBook,
    @DateTimeConverter() DateTime? day,
  }) = _AttendanceBook;

  factory AttendanceBook.fromJson(Map<String, dynamic> json) =>
      _$AttendanceBookFromJson(json);
}

abstract class IAttendanceBookRepository {
  Future<AttendanceBook> fetchAttendanceBookById(
    AttendanceBookId attendanceBookId,
  );
  Future<Student> fetchStudent(StudentInAttendanceBook studentInAttendanceBook);
}
