import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/infrastructure/class_repository.dart';
import '../../domain/value/student_id.dart';
import 'class_use_case.dart';

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
