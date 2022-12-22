import 'package:freezed_annotation/freezed_annotation.dart';
part 'school_term.freezed.dart';
part 'school_term.g.dart';

@freezed
class SchoolTerm with _$SchoolTerm {
  const factory SchoolTerm({
    required String departmentName,
    required String yearPlan,
    required String term,
    required String attendance,
  }) = _SchoolTerm;

  factory SchoolTerm.fromJson(Map<String, dynamic> json) =>
      _$SchoolTermFromJson(json);
}
