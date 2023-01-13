import 'package:freezed_annotation/freezed_annotation.dart';
part 'school_term.freezed.dart';
part 'school_term.g.dart';

@freezed
class SchoolTerm with _$SchoolTerm {
  const factory SchoolTerm({
    required String departmentName,
    required String yearPlan,
    required String term,
  }) = _SchoolTerm;

  factory SchoolTerm.fromJson(Map<String, dynamic> json) =>
      _$SchoolTermFromJson(json);
}

abstract class ISchoolTermRepository {
  void registerNewSchoolTerm(SchoolTerm schoolTerm) {}
}

@freezed
class DepartmentName with _$DepartmentName {
  const factory DepartmentName({required String value}) = _DepartmentName;

  factory DepartmentName.fromJson(Map<String, dynamic> json) =>
      _$DepartmentNameFromJson(json);
}

@freezed
class Major with _$Major {
  const factory Major({required String value}) = _Major;

  factory Major.fromJson(Map<String, dynamic> json) => _$MajorFromJson(json);
}

class Class {
  Class({required this.value});
  final String value;
}
