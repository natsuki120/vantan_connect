// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
// import 'package:vantan_connect/domain/attendance_book/value/student_in_attendance_book.dart';
//
// class AttendanceBookNotifier extends StateNotifier<List<AttendanceBook>> {
//   AttendanceBookNotifier(this.attendanceBookRepository) : super([]);
//   final IAttendanceBookRepository attendanceBookRepository;
//
//   void fetchStudent(
//       List<StudentInAttendanceBook> studentInAttendanceBook) async {
//     for (var studentId in studentInAttendanceBook) {
//       final studentInfo =
//           await attendanceBookRepository.fetchStudent(studentId);
//       state = [...studentInfo];
//     }
//   }
// }
