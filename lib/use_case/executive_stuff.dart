import 'package:vantan_connect/domain/school_term/school_term.dart';

class ExecutiveStaffUseCase {
  ExecutiveStaffUseCase(this.schoolTermRepository);
  final ISchoolTermRepository schoolTermRepository;

  void decideNewSchoolTerm(SchoolTerm schoolTerm) {
    schoolTermRepository.registerNewSchoolTerm(schoolTerm);
  }
}
