import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
part 'department.freezed.dart';
part 'department.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required DepartmentName departmentName,
    required List<Major> majorList,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
