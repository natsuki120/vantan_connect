import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/domain/class/class.dart';
import '/domain/student/student.dart';
import '/infrastructure/class_repository.dart';
import '/domain/value/student_id.dart';

class StudentState extends StateNotifier<List<Student>> {
  StudentState(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchStudentListById(List<StudentId> studentIdList) {
    final studentListFromStream =
        classRepository.fetchStudentListById(studentIdList);
    studentListFromStream.listen((studentList) => state = [...studentList]);
  }
}

final studentState =
    StateNotifierProvider.autoDispose((ref) => StudentState(ClassRepository()));
