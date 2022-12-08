// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      classImgUrl: json['classImgUrl'] as String? ?? '',
      overView: json['overView'] as String? ?? '',
      teacher: (json['teacher'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
      student: (json['student'] as List<dynamic>?)
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
      documentId: (json['documentId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      studentVoice: (json['studentVoice'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isOnline: json['isOnline'] as bool? ?? false,
      baseClass: json['baseClass'] as String? ?? '',
      document: (json['document'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'classImgUrl': instance.classImgUrl,
      'overView': instance.overView,
      'teacher': instance.teacher,
      'student': instance.student,
      'targetSchool': instance.targetSchool,
      'targetStudent': instance.targetStudent,
      'goalPoint': instance.goalPoint,
      'goalRequirements': instance.goalRequirements,
      'endTime': instance.endTime,
      'frameCount': instance.frameCount,
      'startTime': instance.startTime,
      'announceTime': instance.announceTime,
      'timeTable': instance.timeTable,
      'documentId': instance.documentId,
      'studentVoice': instance.studentVoice,
      'isOnline': instance.isOnline,
      'baseClass': instance.baseClass,
      'document': instance.document,
    };
