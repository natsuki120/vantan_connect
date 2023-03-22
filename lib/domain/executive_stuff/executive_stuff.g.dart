// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'executive_stuff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExecutiveStuff _$$_ExecutiveStuffFromJson(Map<String, dynamic> json) =>
    _$_ExecutiveStuff(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      job: json['job'] as String? ?? '',
      profileText: json['profileText'] as String? ?? '',
      attendance: json['attendance'] as String? ?? '',
      attendedDay: json['attendedDay'] as int? ?? 0,
      accountNumber: json['accountNumber'] as String? ?? '',
      userImagePath: json['userImagePath'] as String? ?? '',
      rootCollection: json['rootCollection'] as String? ?? '',
    );

Map<String, dynamic> _$$_ExecutiveStuffToJson(_$_ExecutiveStuff instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'job': instance.job,
      'profileText': instance.profileText,
      'attendance': instance.attendance,
      'attendedDay': instance.attendedDay,
      'accountNumber': instance.accountNumber,
      'userImagePath': instance.userImagePath,
      'rootCollection': instance.rootCollection,
    };
