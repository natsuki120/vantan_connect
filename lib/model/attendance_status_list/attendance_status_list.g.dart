// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_status_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceStatusStateList _$$_AttendanceStatusStateListFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceStatusStateList(
      attendanceStatusList: (json['attendanceStatusList'] as List<dynamic>?)
              ?.map((e) =>
                  AttendanceStatusState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AttendanceStatusState>[],
    );

Map<String, dynamic> _$$_AttendanceStatusStateListToJson(
        _$_AttendanceStatusStateList instance) =>
    <String, dynamic>{
      'attendanceStatusList': instance.attendanceStatusList,
    };
