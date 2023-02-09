// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudentAttendance _$$_StudentAttendanceFromJson(Map<String, dynamic> json) =>
    _$_StudentAttendance(
      student: json['student'] == null
          ? const Student()
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      classInfo: json['classInfo'] == null
          ? const Class()
          : Class.fromJson(json['classInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StudentAttendanceToJson(
        _$_StudentAttendance instance) =>
    <String, dynamic>{
      'student': instance.student.toJson(),
      'classInfo': instance.classInfo.toJson(),
    };
