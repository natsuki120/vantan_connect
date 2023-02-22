import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';

final testClassList = [
  Class(name: 'プログラミング', classDocumentList: [
    ClassDocument(day: '2月14日'),
    ClassDocument(day: '2月15日'),
    ClassDocument(day: '2月16日'),
    ClassDocument(day: '2月17日'),
  ]),
  Class(name: 'Webデザイン', classDocumentList: [ClassDocument(day: '2月14日')]),
  Class(name: 'ITパスポート', classDocumentList: [ClassDocument(day: '2月15日')]),
  Class(name: 'HR', classDocumentList: [ClassDocument(day: '2月15日')]),
  Class(name: 'アートシンキング', classDocumentList: [ClassDocument(day: '2月16日')]),
  Class(name: 'デザインシンキング', classDocumentList: [ClassDocument(day: '2月17日')]),
];
