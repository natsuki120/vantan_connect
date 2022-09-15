// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applying_class_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplyingClassState _$$_ApplyingClassStateFromJson(
        Map<String, dynamic> json) =>
    _$_ApplyingClassState(
      id: json['id'] as String? ?? '',
      className: (json['className'] as List<dynamic>?)
              ?.map((dynamic e) => e as String)
              .toList() ??
          const <String>[],
      name: json['name'] as String? ?? '',
      uid: json['uid'] as String? ?? '',
      userImagePath: json['userImagePath'] as String? ?? '',
    );

Map<String, dynamic> _$$_ApplyingClassStateToJson(
        _$_ApplyingClassState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'className': instance.className,
      'name': instance.name,
      'uid': instance.uid,
      'userImagePath': instance.userImagePath,
    };
