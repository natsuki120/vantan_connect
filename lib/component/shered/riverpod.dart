import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/student_repository.dart';
import '../../use_case/actor/student.dart';

final studentUseCase = Provider((ref) => StudentUseCase(StudentRepository()));
