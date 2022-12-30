import 'package:vantan_connect/domain/executive_stuff/executive_stuff.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';

class ExecutiveStaffUseCase {
  ExecutiveStaffUseCase(this.executiveStuffRepository);
  final IExecutiveStuffRepository executiveStuffRepository;

  void decideNewSchoolTerm(SchoolTerm schoolTerm) {
    executiveStuffRepository.decideNewSchoolTerm(schoolTerm);
  }
}
