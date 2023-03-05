import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import 'package:vantan_connect/infrastructure/query_service/query_service_repository.dart';
import 'package:vantan_connect/use_case/query_service/query_service.dart';

import '../../../../../../../../../shared/single/student_list/student_list.dart';
import '../../../../../../../../lesson_detail_body/hooks.dart';

final fetchClassListInCClass = StreamProvider(
  (ref) {
    return QueryServiceUseCase(
      queryService: QueryServiceRepositoryWhichUseFirebase(),
    ).fetchClassListInCClass();
  },
);

final today = FutureProvider((ref) => ClassDocument(day: '2月16日'));

final Map<String, List<Class>> lessonListByWeek = {
  '月': [
    Class(
      name: 'マーケティング',
      classDocumentList: marketingDocumentListInC,
      classImgUrl: 'marketing.png',
      targetStudentList: studentList,
    ),
  ],
  '火': [
    Class(
        name: 'Webデザイン',
        classDocumentList: WebDesignDocumentListInC,
        classImgUrl: 'wordpress-g1155af3be_1920.jpg',
        targetStudentList: studentList),
    Class(
      name: 'プログラミング',
      classDocumentList: programmingDocumentListInBasicC,
      classImgUrl: 'programming.jpg',
    ),
  ],
  '水': [
    Class(
        name: 'ITパスポート',
        classDocumentList: ITPassportDocumentListInBasicC,
        classImgUrl: 'passport.png',
        targetStudentList: studentList),
    Class(
      name: 'プログラミング',
      classDocumentList: programmingDocumentListInBasicC,
      classImgUrl: 'programming.jpg',
    ),
  ],
  '木': [
    Class(
      name: 'プログラミング',
      classDocumentList: programmingDocumentListInBasicC,
      classImgUrl: 'programming.jpg',
    ),
    Class(
        name: 'アートシンキング',
        classDocumentList: artThinkingDocumentListInC,
        classImgUrl: 'art-thinking.png',
        targetStudentList: studentList),
  ],
  '金': [
    Class(
        name: 'デザインシンキング',
        classDocumentList: designThinkingDocumentListInBasicC,
        classImgUrl: 'design-thinking.jpg',
        targetStudentList: studentList),
    Class(
        name: 'アートシンキング',
        classDocumentList: artThinkingDocumentListInC,
        classImgUrl: 'art-thinking.png',
        targetStudentList: studentList),
  ],
};
