import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/ripository/class/class_repository_impl_test.dart';
import 'package:vantan_connect/ripository/user/user_repository_impl_test.dart';

void main() {
  ClassRepositoryImplTest classRepositoryImplTest = ClassRepositoryImplTest();
  UserRepositoryImplTest userRepositoryImplTest = UserRepositoryImplTest();

  // test('授業の情報取得テスト', () async {
  //   final result = await classRepositoryImplTest.printThings(
  //       classRepositoryImplTest.fetchClassInfoWhichStudentRegistered());
  //   expect(result.length, 3);
  // });

  test('授業の一覧取得テスト', () async {
    final testList =
        await classRepositoryImplTest.fetchClassInfoToConfirmDetail();
    final result = await classRepositoryImplTest.printThings(testList);
    expect(result.length, 3);
  });
}
