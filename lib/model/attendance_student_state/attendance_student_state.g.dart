// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_student_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceStudentState _$$_AttendanceStudentStateFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceStudentState(
      students: (json['students'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AttendanceStudentStateToJson(
        _$_AttendanceStudentState instance) =>
    <String, dynamic>{
      'students': instance.students,
    };
