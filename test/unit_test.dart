import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/infrastructure/fake_class_repository.dart';

final testClassList = [
  Class(
    name: 'UI/UX',
    overView:
        'UI/UXデザインとはユーザー目線で製品やデザインを開発するためのスキル。ただしUIとUXは実は別物。UXは人間の怠惰を追求するための知識と言っても過言ではない。',
    goalPoint:
        'デザインを行うためのツールの使い方を学びと同時にUI/UXの概念を学ぶ。使いやすい、人を怠惰にさせる、人を惹きつけるデザインを作成する。',
  ),
  Class(
    name: 'データサイエンス',
    overView: '様々なデータから知見や洞察を引き出し、ビジネスに付加価値を提供する。データの可視化(ビジュアライゼーション)が意外と重要。',
    goalPoint: '機械学習、統計学、数学を学ぶ',
  ),
];

void main() {
  test('FakeFirebaseTest', () {
    FakeClassRepository firestore = FakeClassRepository(testClassList);
    final result = firestore.fetchClassInfoToConfirmDetail();
    result.listen((event) {
      expect(event, testClassList);
    });
  });
}
