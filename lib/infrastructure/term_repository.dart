import 'package:cloud_firestore/cloud_firestore.dart';
import '../domain/school_term/school_term.dart';

class SchoolTermRepository extends ISchoolTermRepository {
  final firestore = FirebaseFirestore.instance;

  @override
  void registerNewSchoolTerm(SchoolTerm schoolTerm) {
    final doc = firestore.doc(
      'all_class/${schoolTerm.departmentName}/${schoolTerm.yearPlan}/${schoolTerm.term}',
    );
    doc.set(schoolTerm.toJson());
  }
}
