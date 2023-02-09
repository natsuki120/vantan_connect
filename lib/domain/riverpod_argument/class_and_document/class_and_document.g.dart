// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_and_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClassAndDocument _$$_ClassAndDocumentFromJson(Map<String, dynamic> json) =>
    _$_ClassAndDocument(
      classInfo: json['classInfo'] == null
          ? const Class()
          : Class.fromJson(json['classInfo'] as Map<String, dynamic>),
      classDocument: json['classDocument'] == null
          ? const ClassDocument()
          : ClassDocument.fromJson(
              json['classDocument'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClassAndDocumentToJson(_$_ClassAndDocument instance) =>
    <String, dynamic>{
      'classInfo': instance.classInfo.toJson(),
      'classDocument': instance.classDocument.toJson(),
    };
