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
      className: json['className'] as String? ?? '',
      day: json['day'] as String? ?? '',
    );

Map<String, dynamic> _$$_ClassDocumentToJson(_$_ClassDocument instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'count': instance.count,
      'className': instance.className,
      'day': instance.day,
    };
