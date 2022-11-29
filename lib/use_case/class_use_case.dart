import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';
import '../domain/class/class.dart';

final testClassList = [
  Class(
    name: 'UI/UXデザイン実践クラス',
    overView:
        'UI/UXデザインとはユーザー目線で製品やデザインを開発するためのスキル。ただしUIとUXは実は別物。UXは人間の怠惰を追求するための知識と言っても過言ではない。',
    goalPoint:
        'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
    teacher: [
      {'name': '吉田先生', 'job': 'UI/UXデザイナー'},
      {'name': '曽根先生', 'job': 'UI/UXデザイナー'}
    ],
    goalRequirements: ['出席率85%以上'],
    frameCount: 9,
  ),
  Class(
    name: 'データサイエンス',
    overView: '様々なデータから知見や洞察を引き出し、ビジネスに付加価値を提供する。データの可視化(ビジュアライゼーション)が意外と重要。',
    goalPoint: '機械学習、統計学、数学を学ぶ',
    teacher: [
      {'name': '〇〇先生', 'job': 'データサイエンティスト'},
    ],
    goalRequirements: [
      '出席率95%以上',
      '遅刻が4回以内',
    ],
    frameCount: 10,
  ),
];

class ClassUseCase extends StateNotifier<List<Class>> {
  ClassUseCase(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchClassInfoToConfirmDetail() {
    final classState = classRepository.fetchClassInfoToConfirmDetail();
    classState.listen((event) => state = [...event]);
  }

  void fetchBaseClass() {
    final classState = classRepository.fetchBaseClass();
    classState.listen((event) => state = [...event]);
  }
}

final classUseCase = StateNotifierProvider(
  (ref) => ClassUseCase(
    FakeClassRepository(testClassList),
  ),
);
