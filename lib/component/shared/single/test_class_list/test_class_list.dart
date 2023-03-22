import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';

import '../../../local/lesson_detail_body/hooks.dart';

final List<Class> classList = [
  Class(
    name: 'プログラミング',
    weakDay: ['火', '水', '木', '金'],
    classDocumentList: [
      ClassDocument(day: '2月14日'),
      ClassDocument(day: '2月15日'),
      ClassDocument(day: '2月16日'),
      ClassDocument(day: '2月17日'),
    ],
    classImgUrl: 'programming.jpg',
  ),
  Class(
      name: 'マーケティング',
      classDocumentList: marketingDocumentListInC,
      classImgUrl: 'marketing.png',
      weakDay: ['月']),
  Class(
    name: 'Webデザイン',
    weakDay: ['火'],
    classDocumentList: [ClassDocument(day: '2月14日')],
    classImgUrl: 'wordpress-g1155af3be_1920.jpg',
  ),
  Class(
    name: 'ITパスポート',
    weakDay: ['水'],
    classDocumentList: [ClassDocument(day: '2月15日')],
    classImgUrl: 'passport.png',
  ),
  Class(
      name: 'HR',
      weakDay: ['水'],
      classDocumentList: [ClassDocument(day: '2月15日')]),
  Class(
    name: 'アートシンキング',
    weakDay: ['木'],
    classDocumentList: [ClassDocument(day: '2月16日')],
    classImgUrl: 'art-thinking.png',
  ),
  Class(
    name: 'デザインシンキング',
    weakDay: ['金'],
    classDocumentList: [ClassDocument(day: '2月17日')],
    classImgUrl: 'design-thinking.jpg',
  ),
];
