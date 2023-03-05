// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../shared/single/space_box/space_box.dart';
// import '/component/local/lesson_detail_body/hooks.dart';
// import '/domain/class/class.dart';
// import 'element/lesson.dart';
// import 'element/timetable_header_row.dart';
//
// class TimetableContentCaseOfBasicA extends StatelessWidget {
//   const TimetableContentCaseOfBasicA({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             TimetableHeaderRow(weakDay: '月'),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'プログラミング',
//                 classRoom: '',
//                 classDocumentList: programmingDocumentListInBasicA,
//                 classImgUrl: 'programming.jpg',
//                 weakDay: '月曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'プログラミング',
//                 classRoom: '',
//                 classDocumentList: programmingDocumentListInBasicA,
//                 classImgUrl: 'programming.jpg',
//                 weakDay: '月曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'プログラミング',
//                 classRoom: '',
//                 classDocumentList: programmingDocumentListInBasicA,
//                 classImgUrl: 'programming.jpg',
//                 weakDay: '月曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'マーケティング',
//                 classDocumentList: marketingDocumentListInBasicA,
//                 classImgUrl: 'marketing.png',
//                 weakDay: '月曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'マーケティング',
//                 classDocumentList: marketingDocumentListInBasicA,
//                 classImgUrl: 'marketing.png',
//                 weakDay: '月曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//           ],
//         ),
//         SpaceBox(width: 2.sp),
//         Column(
//           children: [
//             TimetableHeaderRow(weakDay: '火'),
//             SpaceBox(height: 4.sp),
//             Lesson(classInfo: Class(name: 'S校サポート')),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'アートシンキング',
//                 classDocumentList: artThinkingDocumentListInBasicA,
//                 classImgUrl: 'art-thinking.png',
//                 weakDay: '火曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'アートシンキング',
//                 classDocumentList: artThinkingDocumentListInBasicA,
//                 classImgUrl: 'art-thinking.png',
//                 weakDay: '火曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'Webデザイン',
//                 classDocumentList: WebDesignDocumentListInBasicA,
//                 classImgUrl: 'wordpress-g1155af3be_1920.jpg',
//                 weakDay: '火曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'Webデザイン',
//                 classDocumentList: WebDesignDocumentListInBasicA,
//                 classImgUrl: 'wordpress-g1155af3be_1920.jpg',
//                 weakDay: '火曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//           ],
//         ),
//         SpaceBox(width: 2.sp),
//         Column(
//           children: [
//             TimetableHeaderRow(weakDay: '水'),
//             SpaceBox(height: 4.sp),
//             Lesson(
//                 classInfo: Class(
//               name: 'プログラミング',
//               classDocumentList: programmingDocumentListInBasicA,
//               classImgUrl: 'programming.jpg,',
//               weakDay: '水曜日',
//             )),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'プログラミング',
//                 classDocumentList: programmingDocumentListInBasicA,
//                 classImgUrl: 'programming.jpg',
//                 weakDay: '水曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//           ],
//         ),
//         SpaceBox(width: 2.sp),
//         Column(
//           children: [
//             TimetableHeaderRow(weakDay: '木'),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'ITパスポート',
//                 classDocumentList: ITPassportDocumentListInBasicA,
//                 classImgUrl: 'passport.png',
//                 weakDay: '木曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'ITパスポート',
//                 classDocumentList: ITPassportDocumentListInBasicA,
//                 classImgUrl: 'passport.png',
//                 weakDay: '木曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'プログラミング',
//                 classRoom: '',
//                 classDocumentList: programmingDocumentListInBasicA,
//                 classImgUrl: 'programming.jpg',
//                 weakDay: '木曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'プログラミング',
//                 classRoom: '',
//                 classDocumentList: programmingDocumentListInBasicA,
//                 classImgUrl: 'programming.jpg',
//                 weakDay: '木曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//           ],
//         ),
//         SpaceBox(width: 2.sp),
//         Column(
//           children: [
//             TimetableHeaderRow(weakDay: '金'),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Lesson(classInfo: 
// Class(
//                 name: 'HR',
//                 classImgUrl: 'home_room.jng'
//               ),
//             SpaceBox(height: 4.sp),
//             Normal(),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'デザインシンキング',
//                 classDocumentList: designThinkingDocumentListInBasicA,
//                 classImgUrl: 'design-thinking',
//                 weakDay: '金曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//             Lesson(
//               classInfo: Class(
//                 name: 'デザインシンキング',
//                 classDocumentList: designThinkingDocumentListInBasicA,
//                 classImgUrl: 'design-thinking',
//                 weakDay: '金曜日',
//               ),
//             ),
//             SpaceBox(height: 4.sp),
//           ],
//         ),
//       ],
//     );
//   }
// }
