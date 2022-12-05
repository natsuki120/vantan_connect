// import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
// import 'package:vantan_connect/domain/attendance_book/attendance_book.dart';
// import 'package:vantan_connect/domain/attendance_book/value/attendance_book_id.dart';
// import 'package:vantan_connect/domain/attendance_book/value/student_in_attendance_book.dart';
// import 'package:vantan_connect/domain/studnet/student.dart';
//
// class FakeAttendanceRepository extends IAttendanceBookRepository {
//   final firestore = FakeFirebaseFirestore();
//
//   @override
//   Future<AttendanceBook> fetchAttendanceBookById(
//     AttendanceBookId attendanceBookId,
//   ) async {
//     final document = await firestore
//         .doc(
//           '/private/v1/users/${studentInAttendanceBook.id}/readOnly/userInfo',
//         )
//         .get();
//     final json = document.data() as Map<String, dynamic>;
//     return AttendanceBook.fromJson(json);
//   }
//
//   @override
//   Future<Student> fetchStudent(
//       StudentInAttendanceBook studentInAttendanceBook) async {
//     final document = await firestore
//         .doc(
//             '/private/v1/users/${studentInAttendanceBook.id}/readOnly/userInfo')
//         .get();
//     final json = document.data() as Map<String, dynamic>;
//     return Student.fromJson(json);
//   }
// }
