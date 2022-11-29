// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      name: json['name'] as String? ?? '',
      overView: json['overView'] as String? ?? '',
      teacher: (json['teacher'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      targetSchool: json['targetSchool'] as String? ?? '',
      targetStudent: json['targetStudent'] as String? ?? '',
      goalPoint: json['goalPoint'] as String? ?? '',
      goalRequirements: (json['goalRequirements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      endTime: json['endTime'] as String? ?? '',
      frameCount: json['frameCount'] as int? ?? 0,
      startTime: json['startTime'] as String? ?? '',
      announceTime: json['announceTime'] as String? ?? '',
      timeTable: json['timeTable'] as int? ?? 0,
      document: (json['document'] as List<dynamic>?)
              ?.map((e) => ClassDocument.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ClassDocument>[],
      studentVoice: (json['studentVoice'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      online: json['online'] as bool? ?? false,
      baseClass: json['baseClass'] as String? ?? '',
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'name': instance.name,
      'overView': instance.overView,
      'teacher': instance.teacher,
      'targetSchool': instance.targetSchool,
      'targetStudent': instance.targetStudent,
      'goalPoint': instance.goalPoint,
      'goalRequirements': instance.goalRequirements,
      'endTime': instance.endTime,
      'frameCount': instance.frameCount,
      'startTime': instance.startTime,
      'announceTime': instance.announceTime,
      'timeTable': instance.timeTable,
      'document': instance.document.map((e) => e.toJson()).toList(),
      'studentVoice': instance.studentVoice,
      'online': instance.online,
      'baseClass': instance.baseClass,
    };
