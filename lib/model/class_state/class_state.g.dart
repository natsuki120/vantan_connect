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
      selectableBaseClass: (json['selectableBaseClass'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      startTime: json['startTime'] as String? ?? '',
      announceTime: json['announceTime'] as String? ?? '',
      teacher: (json['teacher'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      timeTable: json['timeTable'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ClassStateToJson(_$_ClassState instance) =>
    <String, dynamic>{
      'className': instance.className,
      'endTime': instance.endTime,
      'frameCount': instance.frameCount,
      'selectableBaseClass': instance.selectableBaseClass,
      'startTime': instance.startTime,
      'announceTime': instance.announceTime,
      'teacher': instance.teacher,
      'timeTable': instance.timeTable,
    };
