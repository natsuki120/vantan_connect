import '../../../../domain/student/student.dart';

final studentList = <Student>[
  Student(name: '丸山千颯', id: '@maruyama', attendanceState: 'その他(公欠を除く)'),
  Student(
      name: '松田怜士',
      id: '@matsuda',
      attendanceState: 'その他(公欠を除く)',
      reason: '体調不良'),
  Student(name: '豊田龍之介', id: '@toyota', attendanceState: 'その他(公欠を除く)'),
  Student(
      name: '山越拓海',
      id: '@yamagoshi',
      attendanceState: 'その他(公欠を除く)',
      reason: '電車遅延'),
  Student(name: '内藤希心', id: '@naito', attendanceState: 'その他(公欠を除く)'),
  Student(
      name: '山本琉斗',
      id: '@yamamoto',
      attendanceState: 'その他(公欠を除く)',
      reason: '電車遅延'),
  Student(name: '江口紫音', id: '@eguchi', attendanceState: 'その他(公欠を除く)'),
  Student(
      name: '安西美来',
      id: '@anzai',
      attendanceState: 'その他(公欠を除く)',
      reason: '家庭の都合'),
];

final attendanceStudentList = [
  Student(name: '丸山千颯', id: '@maruyama', attendanceState: '出席'),
  Student(name: '松田怜士', id: '@matsuda', attendanceState: '出席', reason: '体調不良'),
  Student(name: '豊田龍之介', id: '@toyota', attendanceState: '出席'),
  Student(
      name: '山越拓海', id: '@yamagoshi', attendanceState: '出席', reason: '電車遅延'),
];

final notAttendanceStudentList = [
  Student(
      name: '丸山千颯', id: '@maruyama', attendanceState: '欠席', reason: '家庭の事情'),
  Student(name: '松田怜士', id: '@matsuda', attendanceState: '欠席', reason: '体調不良'),
  Student(name: '豊田龍之介', id: '@toyota', attendanceState: '欠席', reason: '家庭の事情'),
  Student(
      name: '山越拓海', id: '@yamagoshi', attendanceState: '欠席', reason: '電車遅延'),
];

final lateAttendanceStudentList = [
  Student(
      name: '丸山千颯', id: '@maruyama', attendanceState: '遅刻', reason: '家庭の事情'),
  Student(name: '松田怜士', id: '@matsuda', attendanceState: '遅刻', reason: '体調不良'),
  Student(name: '豊田龍之介', id: '@toyota', attendanceState: '遅刻', reason: '家庭の事情'),
  Student(
      name: '山越拓海', id: '@yamagoshi', attendanceState: '遅刻', reason: '電車遅延'),
];
