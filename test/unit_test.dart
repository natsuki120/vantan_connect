import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/infrastructure/class_repository.dart';
import 'package:vantan_connect/use_case/class_use_case.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

void main() {
  test('providerTest', () {
    final container = ProviderContainer(overrides: [
      classUseCase.overrideWithProvider(
        StateNotifierProvider(
          (ref) => ClassUseCase(ClassRepository(db: FakeFirebaseFirestore())),
        ),
      )
    ]);
    expect(container, 'aaa');
  });
}
