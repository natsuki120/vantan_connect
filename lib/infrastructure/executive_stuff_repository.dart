import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/executive_stuff/executive_stuff.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
import 'package:vantan_connect/use_case/executive_stuff.dart';

class ExecutiveStuffRepository extends IExecutiveStuffRepository {
  final firestore = FirebaseFirestore.instance;

  @override
  void decideNewSchoolTerm(SchoolTerm schoolTerm) {
    final doc = firestore.doc(
      'all_class/${schoolTerm.departmentName}/${schoolTerm.yearPlan}/${schoolTerm.term}',
    );
    doc.set(schoolTerm.toJson());
  }
}

final executiveStuffUseCase = ExecutiveStaffUseCase(ExecutiveStuffRepository());
