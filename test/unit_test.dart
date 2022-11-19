import 'package:flutter_test/flutter_test.dart';
import 'fake_class_reposotory.dart';

void main() {
  test('FakeFirebaseTest', () {
    List testList = [];
    FakeClassRepository firestore = FakeClassRepository();
    final result = firestore.fetchClassInfoToConfirmDetail();
    result.listen((event) => testList.add(event));
    expect(testList, []);
  });
}
