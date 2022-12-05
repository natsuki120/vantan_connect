import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class StudentInAttendanceBook {
  StudentInAttendanceBook(this.id);
  final String id;
}

class StudentInAttendanceBookConverter
    implements JsonConverter<StudentInAttendanceBook, String> {
  const StudentInAttendanceBookConverter();

  @override
  StudentInAttendanceBook fromJson(String json) {
    return StudentInAttendanceBook(json);
  }

  @override
  String toJson(StudentInAttendanceBook studentInAttendanceBook) {
    return studentInAttendanceBook.id;
  }
}
