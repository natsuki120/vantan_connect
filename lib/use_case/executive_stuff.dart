import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
import 'package:vantan_connect/infrastructure/term_repository.dart';

class ExecutiveStaffUseCase {
  ExecutiveStaffUseCase(this.schoolTermRepository);
  final ISchoolTermRepository schoolTermRepository;

  void decideNewSchoolTerm(SchoolTerm schoolTerm) {
    schoolTermRepository.registerNewSchoolTerm(schoolTerm);
  }
}

final executiveStaffUseCase =
    Provider((ref) => ExecutiveStaffUseCase(SchoolTermRepository()));
