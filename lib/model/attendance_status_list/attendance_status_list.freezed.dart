// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_status_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceStatusStateList _$AttendanceStatusStateListFromJson(
    Map<String, dynamic> json) {
  return _AttendanceStatusStateList.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStatusStateList {
  List<AttendanceStatusState> get attendanceStatusList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceStatusStateListCopyWith<AttendanceStatusStateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStatusStateListCopyWith<$Res> {
  factory $AttendanceStatusStateListCopyWith(AttendanceStatusStateList value,
          $Res Function(AttendanceStatusStateList) then) =
      _$AttendanceStatusStateListCopyWithImpl<$Res>;
  $Res call({List<AttendanceStatusState> attendanceStatusList});
}

/// @nodoc
class _$AttendanceStatusStateListCopyWithImpl<$Res>
    implements $AttendanceStatusStateListCopyWith<$Res> {
  _$AttendanceStatusStateListCopyWithImpl(this._value, this._then);

  final AttendanceStatusStateList _value;
  // ignore: unused_field
  final $Res Function(AttendanceStatusStateList) _then;

  @override
  $Res call({
    Object? attendanceStatusList = freezed,
  }) {
    return _then(_value.copyWith(
      attendanceStatusList: attendanceStatusList == freezed
          ? _value.attendanceStatusList
          : attendanceStatusList // ignore: cast_nullable_to_non_nullable
              as List<AttendanceStatusState>,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendanceStatusStateListCopyWith<$Res>
    implements $AttendanceStatusStateListCopyWith<$Res> {
  factory _$$_AttendanceStatusStateListCopyWith(
          _$_AttendanceStatusStateList value,
          $Res Function(_$_AttendanceStatusStateList) then) =
      __$$_AttendanceStatusStateListCopyWithImpl<$Res>;
  @override
  $Res call({List<AttendanceStatusState> attendanceStatusList});
}

/// @nodoc
class __$$_AttendanceStatusStateListCopyWithImpl<$Res>
    extends _$AttendanceStatusStateListCopyWithImpl<$Res>
    implements _$$_AttendanceStatusStateListCopyWith<$Res> {
  __$$_AttendanceStatusStateListCopyWithImpl(
      _$_AttendanceStatusStateList _value,
      $Res Function(_$_AttendanceStatusStateList) _then)
      : super(_value, (v) => _then(v as _$_AttendanceStatusStateList));

  @override
  _$_AttendanceStatusStateList get _value =>
      super._value as _$_AttendanceStatusStateList;

  @override
  $Res call({
    Object? attendanceStatusList = freezed,
  }) {
    return _then(_$_AttendanceStatusStateList(
      attendanceStatusList: attendanceStatusList == freezed
          ? _value._attendanceStatusList
          : attendanceStatusList // ignore: cast_nullable_to_non_nullable
              as List<AttendanceStatusState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceStatusStateList implements _AttendanceStatusStateList {
  const _$_AttendanceStatusStateList(
      {final List<AttendanceStatusState> attendanceStatusList =
          const <AttendanceStatusState>[]})
      : _attendanceStatusList = attendanceStatusList;

  factory _$_AttendanceStatusStateList.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceStatusStateListFromJson(json);

  final List<AttendanceStatusState> _attendanceStatusList;
  @override
  @JsonKey()
  List<AttendanceStatusState> get attendanceStatusList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceStatusList);
  }

  @override
  String toString() {
    return 'AttendanceStatusStateList(attendanceStatusList: $attendanceStatusList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceStatusStateList &&
            const DeepCollectionEquality()
                .equals(other._attendanceStatusList, _attendanceStatusList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_attendanceStatusList));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceStatusStateListCopyWith<_$_AttendanceStatusStateList>
      get copyWith => __$$_AttendanceStatusStateListCopyWithImpl<
          _$_AttendanceStatusStateList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceStatusStateListToJson(
      this,
    );
  }
}

abstract class _AttendanceStatusStateList implements AttendanceStatusStateList {
  const factory _AttendanceStatusStateList(
          {final List<AttendanceStatusState> attendanceStatusList}) =
      _$_AttendanceStatusStateList;

  factory _AttendanceStatusStateList.fromJson(Map<String, dynamic> json) =
      _$_AttendanceStatusStateList.fromJson;

  @override
  List<AttendanceStatusState> get attendanceStatusList;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStatusStateListCopyWith<_$_AttendanceStatusStateList>
      get copyWith => throw _privateConstructorUsedError;
}
