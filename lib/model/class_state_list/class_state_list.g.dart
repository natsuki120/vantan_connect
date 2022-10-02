// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_state_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassStateList _$$_ClassStateListFromJson(Map<String, dynamic> json) =>
    _$_ClassStateList(
      classList: (json['classList'] as List<dynamic>?)
              ?.map((e) => ClassState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ClassState>[],
    );

Map<String, dynamic> _$$_ClassStateListToJson(_$_ClassStateList instance) =>
    <String, dynamic>{
      'classList': instance.classList,
    };
