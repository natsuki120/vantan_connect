import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';

class TestSchoolTermRepository extends ISchoolTermRepository {
  final firestore = FakeFirebaseFirestore();

  @override
  void registerNewSchoolTerm(SchoolTerm schoolTerm) {
    final doc = firestore.doc(
      'all_class/${schoolTerm.departmentName}/${schoolTerm.yearPlan}/${schoolTerm.term}',
    );
    doc.set(schoolTerm.toJson());
  }

  Future<SchoolTerm> fetchSchoolTerm(SchoolTerm schoolTerm) async {
    return await firestore
        .doc(
          'all_class/${schoolTerm.departmentName}/${schoolTerm.yearPlan}/${schoolTerm.term}',
        )
        .get()
        .then((value) {
      final json = value.data() as Map<String, dynamic>;
      return SchoolTerm.fromJson(json);
    });
  }
}
