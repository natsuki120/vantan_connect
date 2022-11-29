import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';
import '../domain/class/class.dart';

final testClassList = [
  Class(
    name: 'UI/UXデザイン実践',
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
  Class(
    name: 'プロダクトマネジメント',
    overView:
        'プロジェクトマネージャーとは、プロジェクトの運営、品質、納期等に責任を持ち、プロジェクトを円滑に推進させる役割を果たすプロジェクト管理者のことです。具体的な業務内容には、プロジェクトメンバーの選定、顧客折衝、案件受注、要件定義、品質管理、納期・進捗管理、コスト管理等があります。',
    goalPoint:
        'プロジェクトマネージャーになる為には、システム開発に関わる一連の業務に精通していなければなりません。よってプロジェクトメンバー（システムエンジニア）として開発や設計業務を経験した後に、プロジェクトリーダー、そしてプロジェクトマネージャーへとキャリアアップするケースが一般的です。',
    teacher: [
      {'name': '堺先生', 'job': 'PM'},
    ],
    goalRequirements: ['出席率95%以上'],
    frameCount: 10,
    baseClass: 'UI/UXデザイン実践',
  ),
  Class(
    name: '統計学',
    overView:
        '統計学とは、統計に関する研究を行う学問である。経験的に得られたバラツキのあるデータから、応用数学の手法を用いて数値上の性質や規則性あるいは不規則性を見いだす。統計的手法は、実験計画、データの要約や解釈を行う上での根拠を提供するため、幅広い分野で応用されている',
    goalPoint:
        '統計学を学んでいると、数値やグラフから解釈がしやすくなるだけではなく、基準値の異変や、グラフの上がり下がりからヒントになるものに気づきやすくなります。 また、データは揃っていても、適切な分析を行わなければ、意味のある正しい結果を導き出すことができません。',
    teacher: [
      {'name': '高橋先生', 'job': 'データアナリスト'},
    ],
    goalRequirements: ['出席率90%以上'],
    frameCount: 10,
    baseClass: 'データサイエンス',
  ),
];

class ClassUseCase extends StateNotifier<List<Class>> {
  ClassUseCase(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchClassInfoToConfirmDetail() {
    final classState = classRepository.fetchClassInfoToConfirmDetail();
    classState.listen((event) => state = [...event]);
  }
}

final classUseCase = StateNotifierProvider(
  (ref) => ClassUseCase(
    FakeClassRepository(testClassList),
  ),
);
