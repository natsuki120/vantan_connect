// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
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

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
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
