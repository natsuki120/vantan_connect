import '../../../../domain/student/student.dart';

final studentList = <Student>[
  Student(name: '丸山千颯', id: '@maruyama', attendanceState: '出席'),
  Student(name: '松田怜士', id: '@matsuda', attendanceState: '欠席', reason: '体調不良'),
  Student(name: '豊田龍之介', id: '@toyota', attendanceState: '出席'),
  Student(
      name: '山越拓海', id: '@yamagoshi', attendanceState: '遅刻', reason: '電車遅延'),
  Student(name: '内藤希心', id: '@naito', attendanceState: '出席'),
  Student(name: '山本琉斗', id: '@yamamoto', attendanceState: '遅刻', reason: '電車遅延'),
  Student(name: '江口紫音', id: '@eguchi', attendanceState: '出席'),
  Student(name: '安西美来', id: '@anzai', attendanceState: '欠席', reason: '家庭の都合'),
  Student(name: '高橋夏輝', id: '@takahashi', attendanceState: '出席'),
];
