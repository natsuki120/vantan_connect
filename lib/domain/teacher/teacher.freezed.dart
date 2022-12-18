// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return _Teacher.fromJson(json);
}

/// @nodoc
mixin _$Teacher {
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
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
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
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? job = null,
    Object? profileText = null,
    Object? attendance = null,
    Object? attendedDay = null,
    Object? accountNumber = null,
    Object? userImagePath = null,
    Object? rootCollection = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      profileText: null == profileText
          ? _value.profileText
          : profileText // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      attendedDay: null == attendedDay
          ? _value.attendedDay
          : attendedDay // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userImagePath: null == userImagePath
          ? _value.userImagePath
          : userImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      rootCollection: null == rootCollection
          ? _value.rootCollection
          : rootCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$_TeacherCopyWith(
          _$_Teacher value, $Res Function(_$_Teacher) then) =
      __$$_TeacherCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_TeacherCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$_Teacher>
    implements _$$_TeacherCopyWith<$Res> {
  __$$_TeacherCopyWithImpl(_$_Teacher _value, $Res Function(_$_Teacher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? job = null,
    Object? profileText = null,
    Object? attendance = null,
    Object? attendedDay = null,
    Object? accountNumber = null,
    Object? userImagePath = null,
    Object? rootCollection = null,
  }) {
    return _then(_$_Teacher(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      profileText: null == profileText
          ? _value.profileText
          : profileText // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      attendedDay: null == attendedDay
          ? _value.attendedDay
          : attendedDay // ignore: cast_nullable_to_non_nullable
              as int,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userImagePath: null == userImagePath
          ? _value.userImagePath
          : userImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      rootCollection: null == rootCollection
          ? _value.rootCollection
          : rootCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Teacher implements _Teacher {
  const _$_Teacher(
      {this.id = '',
      this.name = '',
      this.job = '',
      this.profileText = '',
      this.attendance = '',
      this.attendedDay = 0,
      this.accountNumber = '',
      this.userImagePath = '',
      this.rootCollection = ''});

  factory _$_Teacher.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherFromJson(json);

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
    return 'Teacher(id: $id, name: $name, job: $job, profileText: $profileText, attendance: $attendance, attendedDay: $attendedDay, accountNumber: $accountNumber, userImagePath: $userImagePath, rootCollection: $rootCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Teacher &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.profileText, profileText) ||
                other.profileText == profileText) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.attendedDay, attendedDay) ||
                other.attendedDay == attendedDay) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.userImagePath, userImagePath) ||
                other.userImagePath == userImagePath) &&
            (identical(other.rootCollection, rootCollection) ||
                other.rootCollection == rootCollection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, job, profileText,
      attendance, attendedDay, accountNumber, userImagePath, rootCollection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherCopyWith<_$_Teacher> get copyWith =>
      __$$_TeacherCopyWithImpl<_$_Teacher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherToJson(
      this,
    );
  }
}

abstract class _Teacher implements Teacher {
  const factory _Teacher(
      {final String id,
      final String name,
      final String job,
      final String profileText,
      final String attendance,
      final int attendedDay,
      final String accountNumber,
      final String userImagePath,
      final String rootCollection}) = _$_Teacher;

  factory _Teacher.fromJson(Map<String, dynamic> json) = _$_Teacher.fromJson;

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
  _$$_TeacherCopyWith<_$_Teacher> get copyWith =>
      throw _privateConstructorUsedError;
}
