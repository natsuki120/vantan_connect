// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
mixin _$UserState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;
  String get profileText => throw _privateConstructorUsedError;
  String get attendance => throw _privateConstructorUsedError;
  int get attendedDay => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get userImagePath => throw _privateConstructorUsedError;
  String get rootCollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String job,
      String profileText,
      String attendance,
      int attendedDay,
      String accountNumber,
      String userImagePath,
      String rootCollection});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? job = freezed,
    Object? profileText = freezed,
    Object? attendance = freezed,
    Object? attendedDay = freezed,
    Object? accountNumber = freezed,
    Object? userImagePath = freezed,
    Object? rootCollection = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      profileText: profileText == freezed
          ? _value.profileText
          : profileText // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      attendedDay: attendedDay == freezed
          ? _value.attendedDay
          : attendedDay // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userImagePath: userImagePath == freezed
          ? _value.userImagePath
          : userImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      rootCollection: rootCollection == freezed
          ? _value.rootCollection
          : rootCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String job,
      String profileText,
      String attendance,
      int attendedDay,
      String accountNumber,
      String userImagePath,
      String rootCollection});
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? job = freezed,
    Object? profileText = freezed,
    Object? attendance = freezed,
    Object? attendedDay = freezed,
    Object? accountNumber = freezed,
    Object? userImagePath = freezed,
    Object? rootCollection = freezed,
  }) {
    return _then(_$_UserState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      profileText: profileText == freezed
          ? _value.profileText
          : profileText // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      attendedDay: attendedDay == freezed
          ? _value.attendedDay
          : attendedDay // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userImagePath: userImagePath == freezed
          ? _value.userImagePath
          : userImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      rootCollection: rootCollection == freezed
          ? _value.rootCollection
          : rootCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserState implements _UserState {
  const _$_UserState(
      {this.id = '',
      this.name = '',
      this.job = '',
      this.profileText = '',
      this.attendance = '',
      this.attendedDay = 0,
      this.accountNumber = '',
      this.userImagePath = '',
      this.rootCollection = ''});

  factory _$_UserState.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String job;
  @override
  @JsonKey()
  final String profileText;
  @override
  @JsonKey()
  final String attendance;
  @override
  @JsonKey()
  final int attendedDay;
  @override
  @JsonKey()
  final String accountNumber;
  @override
  @JsonKey()
  final String userImagePath;
  @override
  @JsonKey()
  final String rootCollection;

  @override
  String toString() {
    return 'UserState(id: $id, name: $name, job: $job, profileText: $profileText, attendance: $attendance, attendedDay: $attendedDay, accountNumber: $accountNumber, userImagePath: $userImagePath, rootCollection: $rootCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.job, job) &&
            const DeepCollectionEquality()
                .equals(other.profileText, profileText) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality()
                .equals(other.attendedDay, attendedDay) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality()
                .equals(other.userImagePath, userImagePath) &&
            const DeepCollectionEquality()
                .equals(other.rootCollection, rootCollection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(job),
      const DeepCollectionEquality().hash(profileText),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(attendedDay),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(userImagePath),
      const DeepCollectionEquality().hash(rootCollection));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateToJson(
      this,
    );
  }
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final String id,
      final String name,
      final String job,
      final String profileText,
      final String attendance,
      final int attendedDay,
      final String accountNumber,
      final String userImagePath,
      final String rootCollection}) = _$_UserState;

  factory _UserState.fromJson(Map<String, dynamic> json) =
      _$_UserState.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get job;
  @override
  String get profileText;
  @override
  String get attendance;
  @override
  int get attendedDay;
  @override
  String get accountNumber;
  @override
  String get userImagePath;
  @override
  String get rootCollection;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
