// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_student_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbsenceStudentState _$$_AbsenceStudentStateFromJson(
        Map<String, dynamic> json) =>
    _$_AbsenceStudentState(
      students: (json['students'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AbsenceStudentStateToJson(
        _$_AbsenceStudentState instance) =>
    <String, dynamic>{
      'students': instance.students,
    };
