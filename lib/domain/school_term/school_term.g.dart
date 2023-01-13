// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchoolTerm _$$_SchoolTermFromJson(Map<String, dynamic> json) =>
    _$_SchoolTerm(
      departmentName: json['departmentName'] as String,
      yearPlan: json['yearPlan'] as String,
      term: json['term'] as String,
    );

Map<String, dynamic> _$$_SchoolTermToJson(_$_SchoolTerm instance) =>
    <String, dynamic>{
      'departmentName': instance.departmentName,
      'yearPlan': instance.yearPlan,
      'term': instance.term,
    };

_$_DepartmentName _$$_DepartmentNameFromJson(Map<String, dynamic> json) =>
    _$_DepartmentName(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_DepartmentNameToJson(_$_DepartmentName instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_Major _$$_MajorFromJson(Map<String, dynamic> json) => _$_Major(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_MajorToJson(_$_Major instance) => <String, dynamic>{
      'value': instance.value,
    };
