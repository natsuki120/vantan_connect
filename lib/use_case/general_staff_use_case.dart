import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/general_stuff/general_stuff.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
import 'package:vantan_connect/infrastructure/general_stuff_repository.dart';
import '../domain/lesson/lesson.dart';

class GeneralStuffUseCase {
  GeneralStuffUseCase(this.generalStuffRepository);
  final IGeneralStuffRepository generalStuffRepository;

  void createLesson(Lesson lesson, SchoolTerm schoolTerm) {
    generalStuffRepository.createLesson(lesson, schoolTerm);
  }
}

final generalStuffUseCase = Provider(
  (ref) => GeneralStuffUseCase(GeneralStuffRepository()),
);
