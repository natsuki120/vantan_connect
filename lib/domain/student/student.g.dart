// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      job: json['job'] as String? ?? '',
      course: json['course'] as String? ?? '',
      profileText: json['profileText'] as String? ?? '',
      attendanceState: json['attendanceState'] as String? ?? '',
      late: json['late'] as bool? ?? false,
      reason: json['reason'] as String? ?? '',
      attendedDay: json['attendedDay'] as int? ?? 0,
      accountNumber: json['accountNumber'] as String? ?? '',
      userImagePath: json['userImagePath'] as String? ?? '',
      rootCollection: json['rootCollection'] as String? ?? '',
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'job': instance.job,
      'course': instance.course,
      'profileText': instance.profileText,
      'attendanceState': instance.attendanceState,
      'late': instance.late,
      'reason': instance.reason,
      'attendedDay': instance.attendedDay,
      'accountNumber': instance.accountNumber,
      'userImagePath': instance.userImagePath,
      'rootCollection': instance.rootCollection,
    };
