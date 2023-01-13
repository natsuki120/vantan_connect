// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Department _$$_DepartmentFromJson(Map<String, dynamic> json) =>
    _$_Department(
      departmentName: DepartmentName.fromJson(
          json['departmentName'] as Map<String, dynamic>),
      majorList: (json['majorList'] as List<dynamic>)
          .map((e) => Major.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DepartmentToJson(_$_Department instance) =>
    <String, dynamic>{
      'departmentName': instance.departmentName.toJson(),
      'majorList': instance.majorList.map((e) => e.toJson()).toList(),
    };
