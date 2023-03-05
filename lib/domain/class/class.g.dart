// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      weakDay: json['weakDay'] as List<dynamic>? ?? const [],
      classRoom: json['classRoom'] as String? ?? '',
      classImgUrl: json['classImgUrl'] as String? ?? '',
      overView: json['overView'] as String? ?? '',
      classDocumentList: (json['classDocumentList'] as List<dynamic>?)
              ?.map((e) => ClassDocument.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      studentIdList: (json['studentIdList'] as List<dynamic>?)
              ?.map((e) => StudentId.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      teacherIdList: (json['teacherIdList'] as List<dynamic>?)
              ?.map((e) => TeacherId.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      targetSchool: json['targetSchool'] as String? ?? '',
      targetStudentList: (json['targetStudentList'] as List<dynamic>?)
              ?.map((e) => Student.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'weakDay': instance.weakDay,
      'classRoom': instance.classRoom,
      'classImgUrl': instance.classImgUrl,
      'overView': instance.overView,
      'classDocumentList':
          instance.classDocumentList.map((e) => e.toJson()).toList(),
      'studentIdList': instance.studentIdList.map((e) => e.toJson()).toList(),
      'teacherIdList': instance.teacherIdList.map((e) => e.toJson()).toList(),
      'targetSchool': instance.targetSchool,
      'targetStudentList':
          instance.targetStudentList.map((e) => e.toJson()).toList(),
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
