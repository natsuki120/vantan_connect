import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/domain/teacher/teacher.dart';
import '../../domain/class/value/class_teacher.dart';

abstract class IClassQueryService {
  Stream<List<ClassDto>> fetchBaseClassInfo();
  Stream<List<ClassDto>> fetchSelectableClassInfo(ClassDto classDto);
  Future<Teacher> fetchTeacherInfo(ClassTeacher classTeacher);
  Stream<List<ClassDto>> fetchMyClassInfo();
  void registerClass(ClassDto classDto);
  void registerMyClass(ClassDto classDto);
  void deleteAllClass(List<ClassDto> classDtoList);
  void deleteClass(ClassDto classDto);
}
