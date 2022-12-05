import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
import 'package:vantan_connect/domain/attendance_book/value/attendance_book_id.dart';
import 'package:vantan_connect/domain/attendance_book/value/student_in_attendance_book.dart';
import 'package:vantan_connect/domain/studnet/student.dart';

class AttendanceBookRepository extends IAttendanceBookRepository {
  @override
  Future<AttendanceBook> fetchAttendanceBook() {
    // TODO: implement fetchAttendanceBook
    throw UnimplementedError();
  }

  @override
  Future<AttendanceBook> fetchAttendanceBookById(
      AttendanceBookId attendanceBookId) {
    // TODO: implement fetchAttendanceBookById
    throw UnimplementedError();
  }

  @override
  Future<Student> fetchStudent(
      StudentInAttendanceBook studentInAttendanceBook) {
    // TODO: implement fetchStudent
    throw UnimplementedError();
  }
}
