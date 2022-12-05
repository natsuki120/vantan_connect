import 'package:freezed_annotation/freezed_annotation.dart';

class AttendanceBookId {
  AttendanceBookId(this.id);
  final String id;
}

class AttendanceBookIdConverter
    implements JsonConverter<AttendanceBookId, String> {
  const AttendanceBookIdConverter();

  @override
  AttendanceBookId fromJson(String json) {
    return AttendanceBookId(json);
  }

  @override
  String toJson(AttendanceBookId studentInAttendanceBook) {
    return studentInAttendanceBook.id;
  }
}
