// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      name: json['name'] as String? ?? '',
      overView: json['overView'] as String? ?? '',
      teacher: (json['teacher'] as List<dynamic>?)
              ?.map((e) => UserState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserState>[],
      targetSchool: json['targetSchool'] as String? ?? '',
      targetStudent: json['targetStudent'] as String? ?? '',
      goalPoint: json['goalPoint'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
      frameCount: json['frameCount'] as int? ?? 0,
      student: (json['student'] as List<dynamic>?)
              ?.map((e) => UserState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserState>[],
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
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'name': instance.name,
      'overView': instance.overView,
      'teacher': instance.teacher,
      'targetSchool': instance.targetSchool,
      'targetStudent': instance.targetStudent,
      'goalPoint': instance.goalPoint,
      'endTime': instance.endTime,
      'frameCount': instance.frameCount,
      'student': instance.student,
      'startTime': instance.startTime,
      'announceTime': instance.announceTime,
      'timeTable': instance.timeTable,
      'document': instance.document,
      'studentVoice': instance.studentVoice,
    };
