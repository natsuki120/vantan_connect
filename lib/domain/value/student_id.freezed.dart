// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentId {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentIdCopyWith<StudentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdCopyWith<$Res> {
  factory $StudentIdCopyWith(StudentId value, $Res Function(StudentId) then) =
      _$StudentIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$StudentIdCopyWithImpl<$Res> implements $StudentIdCopyWith<$Res> {
  _$StudentIdCopyWithImpl(this._value, this._then);

  final StudentId _value;
  // ignore: unused_field
  final $Res Function(StudentId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StudentIdCopyWith<$Res> implements $StudentIdCopyWith<$Res> {
  factory _$$_StudentIdCopyWith(
          _$_StudentId value, $Res Function(_$_StudentId) then) =
      __$$_StudentIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_StudentIdCopyWithImpl<$Res> extends _$StudentIdCopyWithImpl<$Res>
    implements _$$_StudentIdCopyWith<$Res> {
  __$$_StudentIdCopyWithImpl(
      _$_StudentId _value, $Res Function(_$_StudentId) _then)
      : super(_value, (v) => _then(v as _$_StudentId));

  @override
  _$_StudentId get _value => super._value as _$_StudentId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_StudentId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StudentId implements _StudentId {
  const _$_StudentId(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'StudentId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_StudentIdCopyWith<_$_StudentId> get copyWith =>
      __$$_StudentIdCopyWithImpl<_$_StudentId>(this, _$identity);
}

abstract class _StudentId implements StudentId {
  const factory _StudentId(final String id) = _$_StudentId;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_StudentIdCopyWith<_$_StudentId> get copyWith =>
      throw _privateConstructorUsedError;
}
