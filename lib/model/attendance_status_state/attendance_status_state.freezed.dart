// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceStatusState _$AttendanceStatusStateFromJson(
    Map<String, dynamic> json) {
  return _AttendanceStatusState.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStatusState {
  String get name => throw _privateConstructorUsedError;
  String get attendance => throw _privateConstructorUsedError;
  String get recordTime => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceStatusStateCopyWith<AttendanceStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStatusStateCopyWith<$Res> {
  factory $AttendanceStatusStateCopyWith(AttendanceStatusState value,
          $Res Function(AttendanceStatusState) then) =
      _$AttendanceStatusStateCopyWithImpl<$Res>;
  $Res call({String name, String attendance, String recordTime, String reason});
}

/// @nodoc
class _$AttendanceStatusStateCopyWithImpl<$Res>
    implements $AttendanceStatusStateCopyWith<$Res> {
  _$AttendanceStatusStateCopyWithImpl(this._value, this._then);

  final AttendanceStatusState _value;
  // ignore: unused_field
  final $Res Function(AttendanceStatusState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? attendance = freezed,
    Object? recordTime = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      recordTime: recordTime == freezed
          ? _value.recordTime
          : recordTime // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendanceStatusStateCopyWith<$Res>
    implements $AttendanceStatusStateCopyWith<$Res> {
  factory _$$_AttendanceStatusStateCopyWith(_$_AttendanceStatusState value,
          $Res Function(_$_AttendanceStatusState) then) =
      __$$_AttendanceStatusStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String attendance, String recordTime, String reason});
}

/// @nodoc
class __$$_AttendanceStatusStateCopyWithImpl<$Res>
    extends _$AttendanceStatusStateCopyWithImpl<$Res>
    implements _$$_AttendanceStatusStateCopyWith<$Res> {
  __$$_AttendanceStatusStateCopyWithImpl(_$_AttendanceStatusState _value,
      $Res Function(_$_AttendanceStatusState) _then)
      : super(_value, (v) => _then(v as _$_AttendanceStatusState));

  @override
  _$_AttendanceStatusState get _value =>
      super._value as _$_AttendanceStatusState;

  @override
  $Res call({
    Object? name = freezed,
    Object? attendance = freezed,
    Object? recordTime = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_AttendanceStatusState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      recordTime: recordTime == freezed
          ? _value.recordTime
          : recordTime // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceStatusState implements _AttendanceStatusState {
  const _$_AttendanceStatusState(
      {this.name = '',
      this.attendance = '',
      this.recordTime = '',
      this.reason = ''});

  factory _$_AttendanceStatusState.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceStatusStateFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String attendance;
  @override
  @JsonKey()
  final String recordTime;
  @override
  @JsonKey()
  final String reason;

  @override
  String toString() {
    return 'AttendanceStatusState(name: $name, attendance: $attendance, recordTime: $recordTime, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceStatusState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality()
                .equals(other.recordTime, recordTime) &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(recordTime),
      const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceStatusStateCopyWith<_$_AttendanceStatusState> get copyWith =>
      __$$_AttendanceStatusStateCopyWithImpl<_$_AttendanceStatusState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceStatusStateToJson(
      this,
    );
  }
}

abstract class _AttendanceStatusState implements AttendanceStatusState {
  const factory _AttendanceStatusState(
      {final String name,
      final String attendance,
      final String recordTime,
      final String reason}) = _$_AttendanceStatusState;

  factory _AttendanceStatusState.fromJson(Map<String, dynamic> json) =
      _$_AttendanceStatusState.fromJson;

  @override
  String get name;
  @override
  String get attendance;
  @override
  String get recordTime;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStatusStateCopyWith<_$_AttendanceStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}
