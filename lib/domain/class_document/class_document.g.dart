// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassDocument _$$_ClassDocumentFromJson(Map<String, dynamic> json) =>
    _$_ClassDocument(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      count: json['count'] as int? ?? 0,
      className: _$JsonConverterFromJson<String, ClassName>(
          json['className'], const ClassNameConverter().fromJson),
    );

Map<String, dynamic> _$$_ClassDocumentToJson(_$_ClassDocument instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'count': instance.count,
      'className': _$JsonConverterToJson<String, ClassName>(
          instance.className, const ClassNameConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
