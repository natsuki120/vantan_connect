// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherId _$TeacherIdFromJson(Map<String, dynamic> json) {
  return _TeacherId.fromJson(json);
}

/// @nodoc
mixin _$TeacherId {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherIdCopyWith<TeacherId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherIdCopyWith<$Res> {
  factory $TeacherIdCopyWith(TeacherId value, $Res Function(TeacherId) then) =
      _$TeacherIdCopyWithImpl<$Res, TeacherId>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$TeacherIdCopyWithImpl<$Res, $Val extends TeacherId>
    implements $TeacherIdCopyWith<$Res> {
  _$TeacherIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeacherIdCopyWith<$Res> implements $TeacherIdCopyWith<$Res> {
  factory _$$_TeacherIdCopyWith(
          _$_TeacherId value, $Res Function(_$_TeacherId) then) =
      __$$_TeacherIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_TeacherIdCopyWithImpl<$Res>
    extends _$TeacherIdCopyWithImpl<$Res, _$_TeacherId>
    implements _$$_TeacherIdCopyWith<$Res> {
  __$$_TeacherIdCopyWithImpl(
      _$_TeacherId _value, $Res Function(_$_TeacherId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_TeacherId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeacherId implements _TeacherId {
  const _$_TeacherId({this.id = ''});

  factory _$_TeacherId.fromJson(Map<String, dynamic> json) =>
      _$$_TeacherIdFromJson(json);

  @override
  @JsonKey()
  final String id;

  @override
  String toString() {
    return 'TeacherId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeacherId &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeacherIdCopyWith<_$_TeacherId> get copyWith =>
      __$$_TeacherIdCopyWithImpl<_$_TeacherId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeacherIdToJson(
      this,
    );
  }
}

abstract class _TeacherId implements TeacherId {
  const factory _TeacherId({final String id}) = _$_TeacherId;

  factory _TeacherId.fromJson(Map<String, dynamic> json) =
      _$_TeacherId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TeacherIdCopyWith<_$_TeacherId> get copyWith =>
      throw _privateConstructorUsedError;
}
