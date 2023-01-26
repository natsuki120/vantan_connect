// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      weekDay: json['weekDay'] as String? ?? '',
      classRoom: json['classRoom'] as String? ?? '',
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
      startTimeList: json['startTimeList'] as List<dynamic>? ?? const [],
      endTimeList: json['endTimeList'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weekDay': instance.weekDay,
      'classRoom': instance.classRoom,
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
      'startTimeList': instance.startTimeList,
      'endTimeList': instance.endTimeList,
    };
