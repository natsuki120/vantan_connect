// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassState _$$_ClassStateFromJson(Map<String, dynamic> json) =>
    _$_ClassState(
      className: json['className'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
      frameCount: json['frameCount'] as int? ?? 0,
      selectedBaseClass:
          json['selectedBaseClass'] as List<dynamic>? ?? const [],
      startTime: json['startTime'] as String? ?? '',
      teacher: json['teacher'] as List<dynamic>? ?? const [],
      timeTable: json['timeTable'] as int? ?? 0,
      weekDay: json['weekDay'] as String? ?? '',
    );

Map<String, dynamic> _$$_ClassStateToJson(_$_ClassState instance) =>
    <String, dynamic>{
      'className': instance.className,
      'endTime': instance.endTime,
      'frameCount': instance.frameCount,
      'selectedBaseClass': instance.selectedBaseClass,
      'startTime': instance.startTime,
      'teacher': instance.teacher,
      'timeTable': instance.timeTable,
      'weekDay': instance.weekDay,
    };
