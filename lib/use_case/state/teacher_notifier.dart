import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/class/class.dart';
import '../../domain/class/value/class_teacher.dart';
import '../../domain/teacher/teacher.dart';

class TeacherNotifier extends StateNotifier<List<Teacher>> {
  TeacherNotifier(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchTeacherInfo(List<ClassTeacher> classTeacher) async {
    for (var teacherId in classTeacher) {
      final teacherInfo = await classRepository.fetchTeacherInfo(teacherId);
      state = [...teacherInfo];
    }
  }
}
