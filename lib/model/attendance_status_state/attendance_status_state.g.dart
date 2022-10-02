// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_status_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceStatusState _$$_AttendanceStatusStateFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceStatusState(
      name: json['name'] as String? ?? '',
      attendance: json['attendance'] as String? ?? '',
      recordTime: json['recordTime'] as String? ?? '',
      reason: json['reason'] as String? ?? '',
    );

Map<String, dynamic> _$$_AttendanceStatusStateToJson(
        _$_AttendanceStatusState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attendance': instance.attendance,
      'recordTime': instance.recordTime,
      'reason': instance.reason,
    };
