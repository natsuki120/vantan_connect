import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/school_term/school_term.dart';
import '../use_case/executive_stuff_use_case.dart';

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

final executiveStaffUseCase = Provider(
  (ref) => ExecutiveStaffUseCase(
    SchoolTermRepository(),
  ),
);
