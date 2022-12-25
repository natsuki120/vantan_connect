// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map<String, dynamic> json) => _$_Lesson(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      classImgUrl: json['classImgUrl'] as String? ?? '',
      overView: json['overView'] as String? ?? '',
      studentIdList: (json['studentIdList'] as List<dynamic>?)
              ?.map((e) => StudentId.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      teacherIdList: (json['teacherIdList'] as List<dynamic>?)
              ?.map((e) => TeacherId.fromJson(e as Map<String, dynamic>))
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
      isOnline: json['isOnline'] as bool? ?? false,
      baseClass: json['baseClass'] as String? ?? '',
      document: (json['document'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'classImgUrl': instance.classImgUrl,
      'overView': instance.overView,
      'studentIdList': instance.studentIdList.map((e) => e.toJson()).toList(),
      'teacherIdList': instance.teacherIdList.map((e) => e.toJson()).toList(),
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
      'isOnline': instance.isOnline,
      'baseClass': instance.baseClass,
      'document': instance.document,
    };
