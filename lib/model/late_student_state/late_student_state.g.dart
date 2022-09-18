// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'late_student_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LateStudentState _$$_LateStudentStateFromJson(Map<String, dynamic> json) =>
    _$_LateStudentState(
      students: (json['students'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LateStudentStateToJson(_$_LateStudentState instance) =>
    <String, dynamic>{
      'students': instance.students,
    };
