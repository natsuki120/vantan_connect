// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$$_UserStateFromJson(Map<String, dynamic> json) => _$_UserState(
      name: json['name'] as String? ?? '',
      profileText: json['profileText'] as String? ?? '',
      attendance: json['attendance'] as String? ?? '',
<<<<<<< HEAD:lib/model/user_state.g.dart
=======
      attendedDay: json['attendedDay'] as int? ?? 0,
      accountNumber: json['accountNumber'] as String? ?? '',
      userImagePath: json['userImagePath'] as String? ?? '',
>>>>>>> a341bdf (✨ create profile page and function edit profile):lib/model/user_state/user_state.g.dart
    );

Map<String, dynamic> _$$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profileText': instance.profileText,
      'attendance': instance.attendance,
<<<<<<< HEAD:lib/model/user_state.g.dart
=======
      'attendedDay': instance.attendedDay,
      'accountNumber': instance.accountNumber,
      'userImagePath': instance.userImagePath,
>>>>>>> a341bdf (✨ create profile page and function edit profile):lib/model/user_state/user_state.g.dart
    };
