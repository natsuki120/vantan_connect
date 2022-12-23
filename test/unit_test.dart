import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
import 'package:vantan_connect/use_case/executive_stuff.dart';
import 'infrastrcuture/test_school_term_repository.dart';

void main() {
  test('役員スタッフのuseCase実行テスト', () {
    TestSchoolTermRepository testSchoolTermRepository =
        TestSchoolTermRepository();
    SchoolTerm testSchoolTerm = SchoolTerm(
      departmentName: 'VTA',
      yearPlan: '2021',
      term: '前期',
    );
    final testExecutiveStaffUseCase =
        Provider((ref) => ExecutiveStaffUseCase(testSchoolTermRepository));
    final container = ProviderContainer(
      overrides: [testExecutiveStaffUseCase],
    );
    container
        .read(testExecutiveStaffUseCase)
        .decideNewSchoolTerm(testSchoolTerm);
    Future<SchoolTerm> testContents =
        testSchoolTermRepository.fetchSchoolTerm(testSchoolTerm);
    testContents.then((value) => expect(value, testSchoolTerm));
  });
}
