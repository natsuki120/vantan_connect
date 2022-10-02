// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_by_day_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassByDayState _$$_ClassByDayStateFromJson(Map<String, dynamic> json) =>
    _$_ClassByDayState(
      id: json['id'] as String? ?? '',
      className: json['className'] as String? ?? '',
      day: json['day'] as String? ?? '',
      announce: const DateTimeConverter().fromJson(json['announce']),
      timeTable: json['timeTable'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ClassByDayStateToJson(_$_ClassByDayState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'className': instance.className,
      'day': instance.day,
      'announce': const DateTimeConverter().toJson(instance.announce),
      'timeTable': instance.timeTable,
    };
