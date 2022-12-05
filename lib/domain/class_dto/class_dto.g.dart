// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassDto _$$_ClassDtoFromJson(Map<String, dynamic> json) => _$_ClassDto(
      id: json['id'] as String? ?? '',
      classInfo: json['classInfo'] == null
          ? null
          : Class.fromJson(json['classInfo'] as Map<String, dynamic>),
      attendanceBook: json['attendanceBook'] == null
          ? null
          : AttendanceBook.fromJson(
              json['attendanceBook'] as Map<String, dynamic>),
      teacher: (json['teacher'] as List<dynamic>?)
          ?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
          .toList(),
      student: (json['student'] as List<dynamic>?)
          ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map((e) => ClassDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClassDtoToJson(_$_ClassDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classInfo': instance.classInfo?.toJson(),
      'attendanceBook': instance.attendanceBook?.toJson(),
      'teacher': instance.teacher?.map((e) => e.toJson()).toList(),
      'student': instance.student?.map((e) => e.toJson()).toList(),
      'document': instance.document?.map((e) => e.toJson()).toList(),
    };
